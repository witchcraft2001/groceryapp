// Package imports:
import 'package:injectable/injectable.dart';
import 'package:rxdart/subjects.dart';

// Project imports:
import 'package:grocery_app/core/data/repository/favorites_repository.dart';
import 'package:grocery_app/features/catalog/domain/entity/product.dart';

@injectable
class FavoritesInteractor {
  final FavoritesRepository _repository;

  FavoritesInteractor(
    this._repository,
  );

  Subject<int> getFavoritesCountSubject() => _repository.favoritesSubject;

  Future<Product> addFavoriteProduct(int productId) => Future.delayed(
        const Duration(milliseconds: 300),
        () => _repository.addFavoriteProduct(productId),
      );

  Future<Product> removeFavoriteProduct(int productId) => Future.delayed(
        const Duration(milliseconds: 300),
        () => _repository.removeFavoriteProduct(productId),
      );
}
