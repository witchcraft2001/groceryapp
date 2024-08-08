// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:grocery_app/core/data/data_source/products_data_source.dart';
import 'package:grocery_app/core/domain/mapper/product_mapper.dart';
import '../../domain/entity/product.dart';

@injectable
class ProductsRepository {
  final ProductsDataSource _dataSource;

  ProductsRepository(this._dataSource);

  Future<List<Product>> getProductsByCategory(int categoryId) async =>
      (await _dataSource.getProductsByCategory(categoryId))
          .map((e) => e.toDomain())
          .toList(growable: false);

  Future<List<Product>> getProductsByIds(List<int> ids) async =>
      (await _dataSource.getProductsByIds(ids))
          .map((e) => e.toDomain())
          .toList(growable: false);

  Future<List<Product>> getRecommendationsByIds(List<int> ids, int count) async =>
      (await _dataSource.getRecommendationsByIds(ids, count))
          .map((e) => e.toDomain())
          .toList(growable: false);
}
