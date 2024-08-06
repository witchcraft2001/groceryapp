// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required int id,
    required int categoryId,
    required String name,
    required String categoryName,
    required bool isFavorite,
    required double price,
    @Default(null) double? priceWithDiscount,
    required String priceDescription,
    required double rate,
    required int ratesCount,
    required String quantityUnit,
    required double multiplicity,
    required String cover,
    required String description,
    @Default({}) Map<String, String> characteristics,
  }) = _Product;
}
