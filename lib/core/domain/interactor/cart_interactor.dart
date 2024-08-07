// Package imports:
import 'package:injectable/injectable.dart';
import 'package:rxdart/subjects.dart';

// Project imports:
import 'package:grocery_app/core/data/service/cart_service.dart';
import '../entity/product.dart';

@injectable
class CartInteractor {
  final CartService _cartService;

  CartInteractor(this._cartService);

  int increaseProductCount(Product product) => _cartService.increaseProduct(product);

  int decreaseProductCount(Product product) => _cartService.decreaseProduct(product);

  Subject<Map<int, int>> getCartSubject() => _cartService.cartSubject;
}
