// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:grocery_app/features/catalog/data/repository/categories_repository.dart';
import 'package:grocery_app/features/catalog/domain/entity/category.dart';

@injectable
class CategoriesInteractor {
  final CategoriesRepository _repository;

  CategoriesInteractor(this._repository);

  Future<List<Category>> getItems() => _repository.get();
}
