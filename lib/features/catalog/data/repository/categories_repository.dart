// Dart imports:
import 'dart:async';

// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:grocery_app/core/data/data_source/categories_data_source.dart';
import 'package:grocery_app/core/domain/entity/category.dart';
import 'package:grocery_app/core/domain/mapper/category_mapper.dart';

@injectable
class CategoriesRepository {
  final CategoriesDataSource _dataSource;

  CategoriesRepository(this._dataSource);

  Future<List<Category>> get() async =>
      (await _dataSource.get()).map((e) => e.toDomain()).toList(growable: false);
}
