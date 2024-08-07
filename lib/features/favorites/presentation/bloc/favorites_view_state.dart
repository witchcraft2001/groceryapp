// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import '../../../../core/domain/entity/product.dart';

part 'favorites_view_state.freezed.dart';

@freezed
class FavoritesViewState with _$FavoritesViewState {
  const factory FavoritesViewState({
    @Default(false) bool isLoading,
    @Default([]) List<Product> products,
    @Default({}) Map<int, int> cartQuantities,
    @Default("") String currency,
    @Default(false) bool isError,
  }) = _FavoritesViewState;
}
