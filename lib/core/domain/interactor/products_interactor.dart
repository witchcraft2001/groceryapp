// Package imports:

// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:grocery_app/core/domain/entity/product.dart';
import '../../data/repository/products_repository.dart';

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

  // Delayed retrieving for show visual effects
  Future<List<Product>> getProductsByIds(List<int> ids) => Future.delayed(
        const Duration(milliseconds: 300),
        () => _repository.getProductsByIds(ids),
      );

  // Delayed retrieving for show visual effects
  Future<List<Product>> getRecommendationsByIds(List<int> ids, int count) => Future.delayed(
        const Duration(milliseconds: 300),
        () => _repository.getRecommendationsByIds(ids, count),
      );
}
