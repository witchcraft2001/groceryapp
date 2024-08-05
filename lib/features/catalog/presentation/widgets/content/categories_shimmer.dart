part of '../catalog_screen.dart';

class _CategoriesShimmer extends StatelessWidget {
  const _CategoriesShimmer();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 20,
      itemBuilder: (_, __) => const _CategoryItemShimmer(),
    );
  }
}

class _CategoryItemShimmer extends StatelessWidget {
  const _CategoryItemShimmer();

  @override
  Widget build(BuildContext context) {
    return AppShimmer(
      child: Padding(
        padding: AppSizes.p8,
        child: Column(
          children: [
            AppShimmerContent(
              borderRadius: AppDecoration.brCategoryIcon,
              width: AppSizes.categoryIcon,
              height: AppSizes.categoryIcon,
            ),
            const AppShimmerContent(
              margin: AppSizes.pt8,
              width: AppSizes.shimmerCategoryTitle,
              height: AppSizes.shimmerTextBase,
            ),
          ],
        ),
      ),
    );
  }
}
