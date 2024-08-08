// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:grocery_app/core/theme/data/theme_provider.dart';
import 'package:grocery_app/core/ui/common/product_item.dart';
import 'package:grocery_app/core/ui/common/product_item_shimmer.dart';
import '../../../../../core/domain/entity/product.dart';
import '../../../../../core/ui/common/app_sizes.dart';
import '../../../../../generated/l10n.dart';

class RecommendationList extends StatelessWidget {
  final bool isLoading;
  final List<Product> items;
  final String currency;
  final ValueChanged<Product> onIncreaseTap;
  final ValueChanged<Product> onDecreaseTap;
  final ValueChanged<Product> onFavoriteTap;

  const RecommendationList({
    super.key,
    required this.isLoading,
    required this.items,
    required this.currency,
    required this.onIncreaseTap,
    required this.onDecreaseTap,
    required this.onFavoriteTap,
  });

  @override
  Widget build(BuildContext context) {
    if (!isLoading && items.isEmpty) return Container();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: AppSizes.ph16v4,
          child: Text(
            S.current.recommendations,
            style: context.appTheme?.text.w600s16cMain,
          ),
        ),
        SizedBox(
          height: AppSizes.productItemHeight + AppSizes.sp8,
          child: isLoading
              ? const _ItemsShimmer()
              : items.isEmpty
                  ? Container()
                  : ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: items.length,
                    shrinkWrap: true,
                    itemBuilder: (_, index) => SizedBox(
                      width: AppSizes.productItemWidth +
                          AppSizes.sp24 +
                          (index == 0 || index == items.length - 1 ? AppSizes.sp12 : 0),
                      child: ProductItem(
                        item: items[index],
                        padding: index == 0
                            ? AppSizes.pl16pr4v4
                            : index == items.length - 1
                                ? AppSizes.pr16pl4v4
                                : AppSizes.p4,
                        onIncreaseTap: onIncreaseTap,
                        onDecreaseTap: onDecreaseTap,
                        onFavoriteTap: onFavoriteTap,
                        quantity: 0,
                        currency: currency,
                      ),
                    ),
                  ),
        ),
      ],
    );
  }
}

class _ItemsShimmer extends StatelessWidget {
  const _ItemsShimmer();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      shrinkWrap: true,
      itemBuilder: (_, index) => SizedBox(
        width: AppSizes.productItemWidth + AppSizes.sp24 + (index == 0 ? AppSizes.sp12 : 0),
        child: Padding(
          padding: index == 0 ? AppSizes.pl16pr4v4 : AppSizes.p4,
          child: const ProductItemShimmer(),
        ),
      ),
    );
  }
}
