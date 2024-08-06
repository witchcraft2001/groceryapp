// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:grocery_app/core/domain/entity/product.dart';
import '../../../../core/domain/entity/category.dart';

part 'catalog_view_state.freezed.dart';

@freezed
class CatalogViewState with _$CatalogViewState {
  const factory CatalogViewState({
    @Default(false) bool isCategoriesLoading,
    @Default(false) bool isProductsLoading,
    @Default([]) List<Category> categories,
    @Default([]) List<Product> products,
    @Default({}) Map<int, int> cartQuantities,
    @Default(null) Category? selectedCategory,
    @Default(false) bool isError,
  }) = _CatalogViewState;
}
