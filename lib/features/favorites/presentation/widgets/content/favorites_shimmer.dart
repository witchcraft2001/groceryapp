part of '../favorites_screen.dart';

class _FavoritesShimmer extends StatelessWidget {
  const _FavoritesShimmer();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 20,
      itemBuilder: (_, __) => const _FavoriteItemShimmer(),
    );
  }
}

class _FavoriteItemShimmer extends StatelessWidget {
  const _FavoriteItemShimmer();

  @override
  Widget build(BuildContext context) {
    return AppShimmer(
      child: Padding(
        padding: AppSizes.p8,
        child: Column(
          children: [
            AppShimmerContent(
              borderRadius: AppDecoration.brBtnOther,
              height: AppSizes.favoritesItemHeight,
            ),
          ],
        ),
      ),
    );
  }
}
