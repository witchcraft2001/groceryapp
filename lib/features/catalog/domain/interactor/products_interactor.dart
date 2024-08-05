// Package imports:
import 'package:grocery_app/features/catalog/domain/entity/product.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import '../../data/repository/products_repository.dart';

@injectable
class ProductsInteractor {
  final ProductsRepository _repository;

  ProductsInteractor(this._repository);

  Future<List<Product>> getProductsByCategory(int categoryId) =>
      _repository.getProductsByCategory(categoryId);
}
