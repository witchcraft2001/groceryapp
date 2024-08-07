// Dart imports:
import 'dart:async';

// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:grocery_app/core/data/model/category_data.dart';
import '../../../../core/ui/common/app_assets.dart';

@lazySingleton
class CategoriesDataSource {
  Future<List<CategoryData>> get() async {
    // Just for create async task
    return Future.microtask(_getItems);
  }

  List<CategoryData> _getItems() => [
        CategoryData(
          id: 1,
          name: 'Vegetables',
          iconInactive: AppAssets.iconVegetables,
          iconActive: AppAssets.iconVegetablesActive,
        ),
        CategoryData(
          id: 2,
          name: 'Fruits',
          iconInactive: AppAssets.iconFruits,
          iconActive: AppAssets.iconFruitsActive,
        ),
        CategoryData(
          id: 3,
          name: 'Milk',
          iconInactive: AppAssets.iconMilk,
          iconActive: AppAssets.iconMilkActive,
        ),
        CategoryData(
          id: 4,
          name: 'Meat',
          iconInactive: AppAssets.iconMeat,
          iconActive: AppAssets.iconMeat,
        ),
        CategoryData(
          id: 5,
          name: 'Pasta',
          iconInactive: AppAssets.iconPasta,
          iconActive: AppAssets.iconPastaActive,
        ),
        CategoryData(
          id: 6,
          name: 'Snacks',
          iconInactive: AppAssets.iconSneacks,
          iconActive: AppAssets.iconSneacksActive,
        ),
      ];
}
