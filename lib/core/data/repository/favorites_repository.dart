// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:grocery_app/core/data/data_source/products_data_source.dart';
import 'package:grocery_app/core/domain/mapper/product_mapper.dart';
import 'package:grocery_app/features/catalog/domain/entity/product.dart';

@injectable
class FavoritesRepository {
  final ProductsDataSource _productsDataSource;

  FavoritesRepository(this._productsDataSource);

  Future<Product> addFavoriteProduct(int productId) async =>
      (await _productsDataSource.addFavoriteProduct(productId)).toDomain();

  Future<Product> removeFavoriteProduct(int productId) async =>
      (await _productsDataSource.removeFavoriteProduct(productId)).toDomain();

  Future<List<Product>> getFavorites() async =>
      (await _productsDataSource.getFavorites()).map((e) => e.toDomain()).toList(growable: false);
}
