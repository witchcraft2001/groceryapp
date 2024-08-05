// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';

@freezed
class Product with _$Product {
  const factory Product({
    required int id,
    required String name,
    required bool isFavorite,
    required double price,
    required String priceDescription,
    required String cover,
    required String description,
    @Default({}) Map<String, String> characteristics,
  }) = _Product;
}
