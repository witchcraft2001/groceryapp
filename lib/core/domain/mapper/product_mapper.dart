// Project imports:
import 'package:grocery_app/core/data/model/product_data.dart';
import 'package:grocery_app/core/domain/entity/product.dart';

extension ProductMapper on ProductData {
  Product toDomain() => Product(
        id: id,
        categoryId: categoryId,
        name: name,
        isFavorite: isFavorite,
        price: price,
        priceWithDiscount: priceWithDiscount,
        priceDescription: priceDescription,
        quantityUnit: quantityUnit,
        multiplicity: multiplicity,
        cover: cover,
        description: description,
        characteristics: characteristics,
        rate: rate,
        ratesCount: ratesCount,
        categoryName: categoryName,
      );
}
