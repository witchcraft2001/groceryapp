part of '../catalog_screen.dart';

class _ProductsShimmer extends StatelessWidget {
  const _ProductsShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: _getItemCountCrossAxis(context)),
      itemBuilder: (_, __) => const _ProductItemShimmer(),
    );
  }

  int _getItemCountCrossAxis(BuildContext context) {
    final width = context.width;
    if (width > 0) {
      return ((width - AppSizes.categoryListWidth) / AppSizes.productItemWidth).toInt();
    } else {
      return 2;
    }
  }
}

class _ProductItemShimmer extends StatelessWidget {
  const _ProductItemShimmer();

  @override
  Widget build(BuildContext context) {
    return AppShimmer(
      child: Padding(
        padding: AppSizes.p8,
        child: AppShimmerContent(
          borderRadius: AppDecoration.brCategoryIcon,
          height: AppSizes.productItemHeight,
        ),
      ),
    );
  }
}
