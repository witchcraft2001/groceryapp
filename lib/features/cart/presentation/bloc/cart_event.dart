part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.started() = _Started;
  const factory CartEvent.onIncreaseProduct(Product product) = _IncreaseProduct;
  const factory CartEvent.onDecreaseProduct(Product product) = _DecreaseProduct;
  const factory CartEvent.onToggleFavoriteProduct(Product product) = _onToggleFavoriteProduct;
  const factory CartEvent.onUpdateFavoriteProduct(Product product) = _onUpdateFavoriteProduct;
  const factory CartEvent.cartUpdated(Map<int, int> cart) = _CartUpdated;
}
