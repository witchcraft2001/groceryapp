// Package imports:
import 'package:injectable/injectable.dart';
import 'package:rxdart/subjects.dart';

// Project imports:
import 'package:grocery_app/core/data/service/cart_service.dart';
import '../../data/repository/products_repository.dart';
import '../entity/product.dart';

@injectable
class CartInteractor {
  final CartService _cartService;
  final ProductsRepository _productsRepository;

  CartInteractor(
    this._cartService,
    this._productsRepository,
  );

  int increaseProductCount(Product product) => _cartService.increaseProduct(product);

  int decreaseProductCount(Product product) => _cartService.decreaseProduct(product);

  Subject<Map<int, int>> getCartSubject() => _cartService.cartSubject;

  Map<int, int> getCartItems() => _cartService.items;

  Future<Map<Product, int>> getCartProducts() async {
    final products =
        await _productsRepository.getProductsByIds(_cartService.items.keys.toList(growable: false));
    return _cartService.items
        .map((key, value) => MapEntry(products.firstWhere((e) => e.id == key), value));
  }
}
