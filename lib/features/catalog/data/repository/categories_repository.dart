// Dart imports:
import 'dart:async';

// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:grocery_app/features/catalog/domain/entity/category.dart';
import '../../../../core/ui/common/app_assets.dart';

@lazySingleton
class CategoriesRepository {
  Future<List<Category>> get() async {
    return Future.delayed(const Duration(milliseconds: 5000), _getItems);
  }

  List<Category> _getItems() => [
        Category(
          id: 1,
          name: 'Vegetables',
          iconInactive: AppAssets.iconVegetables,
          iconActive: AppAssets.iconVegetablesActive,
        ),
        Category(
          id: 2,
          name: 'Fruits',
          iconInactive: AppAssets.iconFruits,
          iconActive: AppAssets.iconFruitsActive,
        ),
        Category(
          id: 3,
          name: 'Milk',
          iconInactive: AppAssets.iconMilk,
          iconActive: AppAssets.iconMilkActive,
        ),
        Category(
          id: 4,
          name: 'Meat',
          iconInactive: AppAssets.iconMeat,
          iconActive: AppAssets.iconMeat,
        ),
        Category(
          id: 5,
          name: 'Pasta',
          iconInactive: AppAssets.iconPasta,
          iconActive: AppAssets.iconPastaActive,
        ),
        Category(
          id: 6,
          name: 'Snacks',
          iconInactive: AppAssets.iconSneacks,
          iconActive: AppAssets.iconSneacksActive,
        ),
      ];
}
