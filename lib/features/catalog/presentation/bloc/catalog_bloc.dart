// Dart imports:
import 'dart:async';

// Package imports:
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:grocery_app/core/domain/interactor/cart_interactor.dart';
import 'package:grocery_app/core/domain/interactor/favorites_interactor.dart';
import 'package:grocery_app/features/catalog/domain/entity/category.dart';
import 'package:grocery_app/features/catalog/domain/entity/product.dart';
import 'package:grocery_app/features/catalog/domain/interactor/products_interactor.dart';
import '../../../../core/data/service/log_service.dart';
import '../../domain/interactor/categories_interactor.dart';
import 'catalog_view_state.dart';

part 'catalog_bloc.freezed.dart';

part 'catalog_event.dart';

part 'catalog_state.dart';

@injectable
class CatalogBloc extends Bloc<CatalogEvent, CatalogState> {
  final CategoriesInteractor _categoriesInteractor;
  final ProductsInteractor _productsInteractor;
  final CartInteractor _cartInteractor;
  final FavoritesInteractor _favoritesInteractor;
  final LogService _logService;
  late StreamSubscription<Map<Product, int>> _cartSubscription;

  CatalogBloc(
    this._categoriesInteractor,
    this._logService,
    this._productsInteractor,
    this._cartInteractor,
    this._favoritesInteractor,
  ) : super(const CatalogState.initial()) {
    _cartSubscription = _cartInteractor.getCartSubject().listen((cart) {
      add(CatalogEvent.cartUpdated(cart));
    });
    on<_Started>((event, emit) async => await _init(emit));
    on<_CategorySelected>((event, emit) async => await _loadCategory(event.category, emit));
    on<_CartUpdated>((event, emit) => _updateCart(event.cart, emit));
    on<_IncreaseProduct>((event, emit) => _increaseProduct(event.product));
    on<_DecreaseProduct>((event, emit) => _decreaseProduct(event.product));
    on<_onToggleFavoriteProduct>((event, emit) async => await _toggleFavorite(event.product, emit));
  }

  void _increaseProduct(Product product) {
    _cartInteractor.increaseProductCount(product);
  }

  void _decreaseProduct(Product product) {
    _cartInteractor.decreaseProductCount(product);
  }

  Future<void> _toggleFavorite(Product product, Emitter<CatalogState> emit) async {
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

  Future<void> _init(Emitter<CatalogState> emit) async {
    _updateState(_getState().copyWith(isCategoriesLoading: true, isProductsLoading: true), emit);
    try {
      final result = await _categoriesInteractor.getItems();
      final selected = result.first;
      _updateState(
        _getState().copyWith(
          categories: result,
          isCategoriesLoading: false,
        ),
        emit,
      );
      await _loadCategory(selected, emit);
    } catch (e, stack) {
      await _logService.recordError(e, stack);
      _updateState(_getState().copyWith(isError: true), emit);
    }
  }

  Future<void> _loadCategory(Category category, Emitter<CatalogState> emit) async {
    _updateState(
      _getState().copyWith(
        selectedCategory: category,
        isProductsLoading: true,
        products: [],
      ),
      emit,
    );
    try {
      final result = await _productsInteractor.getProductsByCategory(category.id);
      _updateState(
        _getState().copyWith(
          products: result,
          isProductsLoading: false,
        ),
        emit,
      );
    } catch (e, stack) {
      await _logService.recordError(e, stack);
      _updateState(_getState().copyWith(isError: true), emit);
    }
  }

  void _updateCart(Map<Product, int> cart, Emitter<CatalogState> emit) {
    _updateState(
      _getState().copyWith(cartQuantities: cart.map((key, value) => MapEntry(key.id, value))),
      emit,
    );
  }

  void _updateState(CatalogViewState viewState, Emitter<CatalogState> emit) {
    emit(CatalogState.ready(viewState));
  }

  CatalogViewState _getState() {
    return (state is Ready) ? (state as Ready).data : const CatalogViewState();
  }

  @override
  Future<void> close() async {
    super.close();
    _cartSubscription.cancel();
  }
}
