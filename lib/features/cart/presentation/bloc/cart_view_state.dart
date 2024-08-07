// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:grocery_app/core/domain/entity/product.dart';

part 'cart_view_state.freezed.dart';

@freezed
class CartViewState with _$CartViewState {
  const factory CartViewState({
    @Default(false) bool isLoading,
    @Default([]) List<Product> products,
    @Default({}) Map<int, int> cartQuantities,
    @Default(0.0) double cartPrice,
    @Default(0.0) double deliveryPrice,
    @Default(0.0) double totalPrice,
    @Default("") String currency,
    @Default(false) bool isReadyToOrder,
    @Default(false) bool isError,
  }) = _CartViewState;
}
