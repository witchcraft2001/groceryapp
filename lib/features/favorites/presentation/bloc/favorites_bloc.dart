// Package imports:
import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import '../../../../core/data/service/log_service.dart';
import '../../../../core/domain/entity/product.dart';
import '../../../../core/domain/interactor/favorites_interactor.dart';
import 'favorites_view_state.dart';

part 'favorites_bloc.freezed.dart';

part 'favorites_event.dart';

part 'favorites_state.dart';

@injectable
class FavoritesBloc extends Bloc<FavoritesEvent, FavoritesState> {
  late StreamSubscription<int> _favoritesSubscription;
  final LogService _logService;
  final FavoritesInteractor _favoritesInteractor;

  FavoritesBloc(
    this._favoritesInteractor,
    this._logService,
  ) : super(const FavoritesState.initial()) {
    _favoritesSubscription = _favoritesInteractor.getFavoritesCountSubject().listen((count) {
      add(const FavoritesEvent.started());
    });
    on<_Started>((event, emit) async => await _init(emit));
  }

  Future<void> _init(Emitter<FavoritesState> emit) async {
    _updateState(_getState().copyWith(isLoading: true, products: []), emit);
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
    return (state is Ready) ? (state as Ready).data : const FavoritesViewState();
  }

  @override
  Future<void> close() async {
    super.close();
    _favoritesSubscription.cancel();
  }
}
