// Package imports:
import 'package:injectable/injectable.dart';
import 'package:rxdart/subjects.dart';

// Project imports:
import 'package:grocery_app/core/data/data_source/products_data_source.dart';
import 'package:grocery_app/core/domain/entity/product.dart';
import 'package:grocery_app/core/domain/mapper/product_mapper.dart';

@lazySingleton
class FavoritesRepository {
  final ProductsDataSource _productsDataSource;
  final BehaviorSubject<int> _favoritesSubject = BehaviorSubject();
  final BehaviorSubject<Product> _favoriteChangesSubject = BehaviorSubject();

  Subject<int> get favoritesSubject => _favoritesSubject;
  Subject<Product> get favoriteChangesSubject => _favoriteChangesSubject;

  FavoritesRepository(this._productsDataSource);

  Future<Product> addFavoriteProduct(int productId) async {
    final product = (await _productsDataSource.addFavoriteProduct(productId)).toDomain();
    await _updateSubjects(product);
    return product;
  }

  Future<Product> removeFavoriteProduct(int productId) async {
    final product = (await _productsDataSource.removeFavoriteProduct(productId)).toDomain();
    await _updateSubjects(product);
    return product;
  }

  Future<List<Product>> getFavorites() async =>
      (await _productsDataSource.getFavorites()).map((e) => e.toDomain()).toList(growable: false);

  Future<void> _updateSubjects(Product product) async {
    _favoriteChangesSubject.add(product);
    final count = (await _productsDataSource.getFavorites()).length;
    _favoritesSubject.add(count);
  }
}
