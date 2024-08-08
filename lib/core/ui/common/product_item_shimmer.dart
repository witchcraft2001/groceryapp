// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'app_decorations.dart';
import 'app_shimmer.dart';
import 'app_shimmer_content.dart';
import 'app_sizes.dart';

class ProductItemShimmer extends StatelessWidget {
  const ProductItemShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return AppShimmer(
      child: Padding(
        padding: AppSizes.p4,
        child: AppShimmerContent(
          borderRadius: AppDecoration.brCategoryIcon,
          height: AppSizes.productItemHeight,
        ),
      ),
    );
  }
}
