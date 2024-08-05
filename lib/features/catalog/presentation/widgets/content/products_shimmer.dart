part of '../catalog_screen.dart';

class _ProductsShimmer extends StatelessWidget with ProductItemCrossAxisCountCalculator {
  const _ProductsShimmer();

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: AppSizes.ph8,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: getItemCountCrossAxis(context),
        childAspectRatio: getAspectRatio(context),
      ),
      itemBuilder: (_, __) => const _ProductItemShimmer(),
    );
  }
}

class _ProductItemShimmer extends StatelessWidget {
  const _ProductItemShimmer();

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
