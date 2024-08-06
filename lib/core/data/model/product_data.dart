// Dart imports:
import 'dart:core';

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_data.freezed.dart';

@freezed
class ProductData with _$ProductData {
  const factory ProductData({
    required int id,
    required int categoryId,
    required String name,
    required bool isFavorite,
    required double price,
    @Default(null) double? priceWithDiscount,
    required String priceDescription,
    required String quantityUnit,
    required double multiplicity,
    required String cover,
    required String description,
    @Default({}) Map<String, String> characteristics,
  }) = _ProductData;
}
