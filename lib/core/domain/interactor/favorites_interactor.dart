// Package imports:
import 'package:injectable/injectable.dart';
import 'package:rxdart/subjects.dart';

// Project imports:
import 'package:grocery_app/core/data/repository/favorites_repository.dart';
import 'package:grocery_app/core/domain/entity/product.dart';

@injectable
class FavoritesInteractor {
  final FavoritesRepository _repository;

  FavoritesInteractor(
    this._repository,
  );

  Subject<int> getFavoritesCountSubject() => _repository.favoritesSubject;
  Subject<Product> getFavoriteChangesSubject() => _repository.favoriteChangesSubject;

  Future<Product> addFavoriteProduct(int productId) => Future.delayed(
        const Duration(milliseconds: 300),
        () => _repository.addFavoriteProduct(productId),
      );

  Future<Product> removeFavoriteProduct(int productId) => Future.delayed(
        const Duration(milliseconds: 300),
        () => _repository.removeFavoriteProduct(productId),
      );

  Future<List<Product>> getFavorites() async =>Future.delayed(
    const Duration(milliseconds: 300),
        () => _repository.getFavorites(),
  );
}
