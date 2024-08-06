// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:grocery_app/core/domain/entity/category.dart';
import 'package:grocery_app/features/catalog/data/repository/categories_repository.dart';

@injectable
class CategoriesInteractor {
  final CategoriesRepository _repository;

  CategoriesInteractor(this._repository);

  // Delayed retrieving for show visual effects
  Future<List<Category>> getItems() => Future.delayed(
        const Duration(milliseconds: 300),
        () => _repository.get(),
      );
}
