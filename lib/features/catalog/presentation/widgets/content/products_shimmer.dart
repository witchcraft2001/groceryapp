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
      itemBuilder: (_, __) => const ProductItemShimmer(),
    );
  }
}
