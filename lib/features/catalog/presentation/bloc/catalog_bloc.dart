// Package imports:
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:grocery_app/features/catalog/domain/entity/category.dart';
import '../../../../core/data/service/log_service.dart';
import '../../domain/interactor/categories_interactor.dart';
import 'catalog_view_state.dart';

part 'catalog_bloc.freezed.dart';

part 'catalog_event.dart';

part 'catalog_state.dart';

@injectable
class CatalogBloc extends Bloc<CatalogEvent, CatalogState> {
  final CategoriesInteractor _categoriesInteractor;
  final LogService _logService;

  CatalogBloc(
    this._categoriesInteractor,
    this._logService,
  ) : super(const CatalogState.initial()) {
    on<_Started>((event, emit) async => await _init(emit));
    on<_CategorySelected>((event, emit) async => await _loadCategory(event.category, emit));
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

  Future<void> _loadCategory(Category category, Emitter<CatalogState> emit) async {}

  void _updateState(CatalogViewState viewState, Emitter<CatalogState> emit) {
    emit(CatalogState.ready(viewState));
  }

  CatalogViewState _getState() {
    return (state is Ready) ? (state as Ready).data : const CatalogViewState();
  }
}
