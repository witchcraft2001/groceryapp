// Dart imports:
import 'dart:async';

// Package imports:
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import '../../../../core/data/constants.dart';
import '../../../../core/data/service/log_service.dart';
import '../../../../core/domain/entity/product.dart';
import '../../../../core/domain/interactor/cart_interactor.dart';
import '../../../../core/domain/interactor/favorites_interactor.dart';
import 'favorites_view_state.dart';

part 'favorites_bloc.freezed.dart';

part 'favorites_event.dart';

part 'favorites_state.dart';

@injectable
class FavoritesBloc extends Bloc<FavoritesEvent, FavoritesState> {
  late StreamSubscription<int> _favoritesSubscription;
  late StreamSubscription<Map<int, int>> _cartSubscription;
  final Constants _constants;
  final LogService _logService;
  final FavoritesInteractor _favoritesInteractor;
  final CartInteractor _cartInteractor;

  FavoritesBloc(
    this._favoritesInteractor,
    this._logService,
    this._cartInteractor,
    this._constants,
  ) : super(const FavoritesState.initial()) {
    _cartSubscription = _cartInteractor.getCartSubject().listen((cart) {
      add(FavoritesEvent.cartUpdated(cart));
    });
    _favoritesSubscription = _favoritesInteractor.getFavoritesCountSubject().listen((count) {
      add(const FavoritesEvent.started());
    });
    on<_Started>((event, emit) async => await _init(emit));
    on<_OnRemoveFavoriteProduct>((event, emit) async => await _removeFavorite(event.product, emit));
    on<_CartUpdated>((event, emit) => _updateCart(event.cart, emit));
    on<_IncreaseProduct>((event, emit) => _increaseProduct(event.product));
    on<_DecreaseProduct>((event, emit) => _decreaseProduct(event.product));
  }

  void _increaseProduct(Product product) {
    _cartInteractor.increaseProductCount(product);
  }

  void _decreaseProduct(Product product) {
    _cartInteractor.decreaseProductCount(product);
  }

  Future<void> _removeFavorite(Product product, Emitter<FavoritesState> emit) async {
    await _favoritesInteractor.removeFavoriteProduct(product.id);
  }

  void _updateCart(Map<int, int> cart, Emitter<FavoritesState> emit) {
    _updateState(
      _getState().copyWith(cartQuantities: cart.map((key, value) => MapEntry(key, value))),
      emit,
    );
  }

  Future<void> _init(Emitter<FavoritesState> emit) async {
    _updateState(
      _getState().copyWith(
        isLoading: true,
        products: [],
        currency: _constants.currency,
      ),
      emit,
    );
    try {
      final result = await _favoritesInteractor.getFavorites();
      _updateState(
        _getState().copyWith(
          products: result,
          isLoading: false,
          isError: false,
        ),
        emit,
      );
    } catch (e, stack) {
      await _logService.recordError(e, stack);
      _updateState(
        _getState().copyWith(
          isError: true,
          isLoading: false,
        ),
        emit,
      );
    }
  }

  void _updateState(FavoritesViewState viewState, Emitter<FavoritesState> emit) {
    emit(FavoritesState.ready(viewState));
  }

  FavoritesViewState _getState() {
    return (state is Ready)
        ? (state as Ready).data
        : FavoritesViewState(currency: _constants.currency);
  }

  @override
  Future<void> close() async {
    super.close();
    _cartSubscription.cancel();
    _favoritesSubscription.cancel();
  }
}
