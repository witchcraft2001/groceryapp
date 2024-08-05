// Dart imports:
import 'dart:core';

class ProductData {
  final int id;
  final String name;
  final bool isFavorite;
  final double price;
  final String priceDescription;
  final double multiplicity;
  final String cover;
  final String description;
  final Map<String, String> characteristics;

  ProductData({
    required this.id,
    required this.name,
    required this.isFavorite,
    required this.price,
    required this.priceDescription,
    required this.multiplicity,
    required this.cover,
    required this.description,
    required this.characteristics,
  });
}
