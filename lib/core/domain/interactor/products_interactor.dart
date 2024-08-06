// Package imports:

// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:grocery_app/core/domain/entity/product.dart';
import '../../../features/catalog/data/repository/products_repository.dart';

@injectable
class ProductsInteractor {
  final ProductsRepository _repository;

  ProductsInteractor(
    this._repository,
  );

  // Delayed retrieving for show visual effects
  Future<List<Product>> getProductsByCategory(int categoryId) => Future.delayed(
        const Duration(milliseconds: 300),
        () => _repository.getProductsByCategory(categoryId),
      );
}
