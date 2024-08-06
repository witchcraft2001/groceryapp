// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:grocery_app/core/extensions/context_extensions.dart';
import 'package:grocery_app/core/ui/common/app_sizes.dart';

mixin ProductItemCrossAxisCountCalculator {
  int getItemCountCrossAxis(BuildContext context) {
    final width = context.width;
    if (width > 0) {
      return ((width - AppSizes.categoryListWidth) / AppSizes.productItemWidth).toInt();
    } else {
      return 2;
    }
  }

  double getAspectRatio(BuildContext context) {
    final count = getItemCountCrossAxis(context);
    return (((context.width - AppSizes.categoryListWidth - AppSizes.sp16) /
        getItemCountCrossAxis(context)) - AppSizes.sp8) / AppSizes.productItemHeight;
  }
}
