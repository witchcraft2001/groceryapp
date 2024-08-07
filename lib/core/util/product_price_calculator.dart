// Project imports:
import 'package:grocery_app/core/domain/entity/product.dart';
import 'package:grocery_app/core/extensions/double_extensions.dart';

double calculateProductPrice(Product product, int quantity) =>
    ((product.multiplicity * quantity).ceilToPlaces(2) *
            (product.priceWithDiscount ?? product.price))
        .ceilToPlaces(2);

double calculateProductPriceWithoutDiscount(Product product, int quantity) =>
    ((product.multiplicity * quantity).ceilToPlaces(2) * product.price).ceilToPlaces(2);
