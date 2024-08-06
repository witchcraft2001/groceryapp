// Dart imports:
import 'dart:async';

// Package imports:
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:grocery_app/core/domain/entity/product.dart';
import 'package:grocery_app/core/domain/interactor/cart_interactor.dart';
import 'package:grocery_app/core/domain/interactor/favorites_interactor.dart';

part 'main_bloc.freezed.dart';

part 'main_event.dart';

part 'main_state.dart';

@lazySingleton
class MainBloc extends Bloc<MainEvent, MainState> {
  late StreamSubscription<Map<Product, int>> _cartSubscription;
  late StreamSubscription<int> _favoritesSubscription;
  final FavoritesInteractor _favoritesInteractor;
  final CartInteractor _cartInteractor;

  MainBloc(
    this._favoritesInteractor,
    this._cartInteractor,
  ) : super(const MainState.ready(1, 0, 0)) {
    _cartSubscription = _cartInteractor.getCartSubject().listen((cart) {
      add(MainEvent.onCartPositionsCountChanged(cart.length));
    });
    _favoritesSubscription = _favoritesInteractor.getFavoritesCountSubject().listen((count) {
      add(MainEvent.onFavoritesCountChanged(count));
    });
    on<_OnPageChanged>((event, emit) => _updateState(emit, currentPage: event.index));
    on<_OnFavoritesCountChanged>((event, emit) => _updateState(emit, favoritesCount: event.count));
    on<_OnCartPositionsCountChanged>((event, emit) => _updateState(emit, cartPositionCount: event.count));
  }

  void _updateState(
    Emitter<MainState> emit, {
    int? currentPage,
    int? cartPositionCount,
    int? favoritesCount,
  }) {
    final newState = state.copyWith(
      currentPage: currentPage ?? state.currentPage,
      cartPositionCount: cartPositionCount ?? state.cartPositionCount,
      favoritesCount: favoritesCount ?? state.favoritesCount,
    );
    emit(newState);
  }

  @override
  Future<void> close() async {
    super.close();
    _cartSubscription.cancel();
    _favoritesSubscription.cancel();
  }
}
