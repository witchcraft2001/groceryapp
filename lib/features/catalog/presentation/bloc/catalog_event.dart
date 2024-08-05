part of 'catalog_bloc.dart';

@freezed
class CatalogEvent with _$CatalogEvent {
  const factory CatalogEvent.started() = _Started;
  const factory CatalogEvent.categorySelected(Category category) = _CategorySelected;
}
