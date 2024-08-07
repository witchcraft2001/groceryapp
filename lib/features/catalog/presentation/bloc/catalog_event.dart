part of 'catalog_bloc.dart';

@freezed
class CatalogEvent with _$CatalogEvent {
  const factory CatalogEvent.started() = _Started;
  const factory CatalogEvent.categorySelected(Category category) = _CategorySelected;
  const factory CatalogEvent.onIncreaseProduct(Product product) = _IncreaseProduct;
  const factory CatalogEvent.onDecreaseProduct(Product product) = _DecreaseProduct;
  const factory CatalogEvent.onToggleFavoriteProduct(Product product) = _onToggleFavoriteProduct;
  const factory CatalogEvent.onUpdateFavoriteProduct(Product product) = _onUpdateFavoriteProduct;
  const factory CatalogEvent.cartUpdated(Map<int, int> cart) = _CartUpdated;
}
