// Package imports:
import 'package:injectable/injectable.dart';
import 'package:rxdart/subjects.dart';

// Project imports:
import 'package:grocery_app/core/domain/entity/product.dart';

@lazySingleton
class CartService {
  final Map<int, int> items = {};
  final BehaviorSubject<Map<int, int>> _cartSubject = BehaviorSubject();

  Subject<Map<int, int>> get cartSubject => _cartSubject;

  int increaseProduct(Product product) {
    final newQuantity = (items[product.id] ?? 0) + 1;
    items[product.id] = newQuantity;
    _cartSubject.add(items);
    return newQuantity;
  }

  int decreaseProduct(Product product) {
    final newQuantity = (items[product.id] ?? 0) - 1;
    if (newQuantity <= 0) {
      items.remove(product.id);
      _cartSubject.add(items);
      return 0;
    }
    items[product.id] = newQuantity;
    _cartSubject.add(items);
    return newQuantity;
  }
}
