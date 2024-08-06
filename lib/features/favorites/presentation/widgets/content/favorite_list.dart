part of '../favorites_screen.dart';

class _FavoriteList extends StatelessWidget {
  final bool isLoading;
  final List<Product> items;
  final Map<int, int> quantities;
  final ValueChanged<Product> onIncreaseTap;
  final ValueChanged<Product> onDecreaseTap;
  final ValueChanged<Product> onRemoveFavoriteTap;
  final ValueChanged<Product> onTap;

  const _FavoriteList({
    required this.isLoading,
    required this.items,
    required this.onTap,
    required this.quantities,
    required this.onIncreaseTap,
    required this.onDecreaseTap,
    required this.onRemoveFavoriteTap,
  });

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const _FavoritesShimmer()
        : ListView.separated(
            itemCount: items.length,
            shrinkWrap: true,
            itemBuilder: (_, index) {
              final item = items[index];
              return _FavoriteItem(
                item: item,
                onTap: onTap,
                padding: AppSizes.ph16,
                onRemoveFavoriteTap: (value) {},
                quantity: quantities[item.id] ?? 0,
                onIncreaseTap: onIncreaseTap,
                onDecreaseTap: onDecreaseTap,
              );
            }, separatorBuilder: (BuildContext context, int index) => Divider(color: context.appTheme?.colors.divider),);
  }
}
