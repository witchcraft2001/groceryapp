// Project imports:
import 'package:grocery_app/core/data/model/category_data.dart';
import 'package:grocery_app/features/catalog/domain/entity/category.dart';

extension CategoryMapper on CategoryData {
  Category toDomain() => Category(
        id: id,
        name: name,
        iconInactive: iconInactive,
        iconActive: iconActive,
      );
}
