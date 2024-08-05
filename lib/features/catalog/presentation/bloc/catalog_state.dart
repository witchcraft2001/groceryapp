part of 'catalog_bloc.dart';

@freezed
class CatalogState with _$CatalogState {
  const factory CatalogState.initial() = _Initial;
  const factory CatalogState.ready(CatalogViewState data) = Ready;
}
