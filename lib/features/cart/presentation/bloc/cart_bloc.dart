// Dart imports:
import 'dart:async';

// Package imports:
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:grocery_app/core/extensions/double_extensions.dart';
import 'package:grocery_app/core/extensions/iterable_extensions.dart';
import '../../../../core/data/constants.dart';
import '../../../../core/data/service/log_service.dart';
import '../../../../core/domain/entity/product.dart';
import '../../../../core/domain/interactor/cart_interactor.dart';
import '../../../../core/domain/interactor/favorites_interactor.dart';
import '../../../../core/domain/interactor/products_interactor.dart';
import 'cart_view_state.dart';

part 'cart_bloc.freezed.dart';

part 'cart_event.dart';

part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  late StreamSubscription<int> _favoritesSubscription;
  late StreamSubscription<Map<int, int>> _cartSubscription;
  final Constants _constants;
  final LogService _logService;
  final CartInteractor _cartInteractor;
  final FavoritesInteractor _favoritesInteractor;
  final ProductsInteractor _productsInteractor;

  CartBloc(
    this._cartInteractor,
    this._favoritesInteractor,
    this._constants,
    this._logService,
    this._productsInteractor,
  ) : super(const CartState.initial()) {
    _cartSubscription = _cartInteractor.getCartSubject().listen((cart) {
      add(CartEvent.cartUpdated(cart));
    });
    _favoritesSubscription = _favoritesInteractor.getFavoritesCountSubject().listen((count) {
      add(const CartEvent.started());
    });
    on<_Started>((event, emit) async => await _init(emit));
    on<_CartUpdated>((event, emit) => _updateCartItems(emit));
    on<_IncreaseProduct>((event, emit) => _increaseProduct(event.product));
    on<_DecreaseProduct>((event, emit) => _decreaseProduct(event.product));
    on<_onToggleFavoriteProduct>((event, emit) async => await _toggleFavorite(event.product, emit));
    on<_onUpdateFavoriteProduct>((event, emit) async => await _updateFavorite(event.product, emit));
  }

  Future<void> _init(Emitter<CartState> emit) async {
    _updateState(_getState().copyWith(isLoading: true, isError: false), emit);
    await _updateCartItems(emit);
  }

  Future<void> _updateCartItems(Emitter<CartState> emit) async {
    try {
      final oldProductIds = _getState().products.map((e) => e.id);
      final cartItems = _cartInteractor.getCartItems();
      final newProductIds =
          cartItems.keys.where((e) => !oldProductIds.contains(e)).toList(growable: false);

      final newProducts = await _productsInteractor.getProductsByIds(newProductIds);
      final products = _getState().products + newProducts;
      final cartPrice = cartItems.entries
          .map((entry) => _getProductPrice(products, entry.key, entry.value))
          .fold(0.0, (sum, price) => sum + price);
      final deliveryPrice = (_constants.minOrderPriceToDiscountedDelivery >= cartPrice)
          ? _constants.deliveryPrice
          : _constants.minOrderPriceToDiscountedDelivery;
      final totalPrice = cartPrice + deliveryPrice;
      final isReadyToOrder = cartPrice >= _constants.minOrderPrice;
      _updateState(
        _getState().copyWith(
          products: products,
          cartPrice: cartPrice,
          deliveryPrice: deliveryPrice,
          totalPrice: totalPrice,
          isReadyToOrder: isReadyToOrder,
          isError: false,
          isLoading: false,
        ),
        emit,
      );
    } catch (e, stack) {
      await _logService.recordError(e, stack);
    }
  }

  void _increaseProduct(Product product) {
    _cartInteractor.increaseProductCount(product);
  }

  void _decreaseProduct(Product product) {
    _cartInteractor.decreaseProductCount(product);
  }

  Future<void> _updateFavorite(Product product, Emitter<CartState> emit) async {
    final products = _getState().products;
    if (products.any((e) => e.id == product.id)) {
      final newState = _getState().copyWith(
        products: products.map((e) => e.id == product.id ? product : e).toList(growable: false),
      );
      _updateState(newState, emit);
    }
  }

  Future<void> _toggleFavorite(Product product, Emitter<CartState> emit) async {
    try {
      final newProduct = product.isFavorite
          ? await _favoritesInteractor.removeFavoriteProduct(product.id)
          : await _favoritesInteractor.addFavoriteProduct(product.id);
      final products = _getState().products;
      final newState = _getState().copyWith(
        products: products.map((e) => e.id == product.id ? newProduct : e).toList(growable: false),
      );
      _updateState(newState, emit);
    } catch (e, stack) {
      await _logService.recordError(e, stack);
    }
  }

  double _getProductPrice(List<Product> products, int id, int quantity) {
    final product = products.firstWhereOrNull((e) => e.id == id);
    if (product != null) {
      return ((product.multiplicity * quantity).ceilToPlaces(2) * product.price).ceilToPlaces(2);
    } else {
      return 0;
    }
  }

  void _updateState(CartViewState viewState, Emitter<CartState> emit) {
    emit(CartState.ready(viewState));
  }

  CartViewState _getState() {
    return (state is Ready) ? (state as Ready).data : CartViewState(currency: _constants.currency);
  }

  @override
  Future<void> close() async {
    super.close();
    _cartSubscription.cancel();
    _favoritesSubscription.cancel();
  }
}
