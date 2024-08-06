part of 'favorites_bloc.dart';

@freezed
class FavoritesEvent with _$FavoritesEvent {
  const factory FavoritesEvent.started() = _Started;
  const factory FavoritesEvent.onIncreaseProduct(Product product) = _IncreaseProduct;
  const factory FavoritesEvent.onDecreaseProduct(Product product) = _DecreaseProduct;
  const factory FavoritesEvent.onRemoveFavoriteProduct(Product product) = _onRemoveFavoriteProduct;
  const factory FavoritesEvent.cartUpdated(Map<Product, int> cart) = _CartUpdated;
}
