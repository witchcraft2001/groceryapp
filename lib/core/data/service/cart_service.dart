// Package imports:
import 'package:injectable/injectable.dart';
import 'package:rxdart/subjects.dart';

// Project imports:
import 'package:grocery_app/features/catalog/domain/entity/product.dart';

@lazySingleton
class CartService {
  final Map<Product, int> items = {};
  final BehaviorSubject<Map<Product, int>> _cartSubject = BehaviorSubject();

  Subject<Map<Product, int>> get cartSubject => _cartSubject;

  int increaseProduct(Product product) {
    final newQuantity = (items[product] ?? 0) + 1;
    items[product] = newQuantity;
    _cartSubject.add(items);
    return newQuantity;
  }

  int decreaseProduct(Product product) {
    final newQuantity = (items[product] ?? 0) - 1;
    if (newQuantity <= 0) {
      items.remove(product);
      _cartSubject.add(items);
      return 0;
    }
    items[product] = newQuantity;
    _cartSubject.add(items);
    return newQuantity;
  }
}
