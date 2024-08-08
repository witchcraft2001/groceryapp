// Package imports:
import 'package:injectable/injectable.dart';

@lazySingleton
class Constants {
  String currency = 'EUR';
  int recommendationCount = 5;
  double minOrderPrice = 20.0;
  double minOrderPriceToDiscountedDelivery = 50.0;
  double discountedDeliveryPrice = 0.0;
  double deliveryPrice = 5.0;
}
