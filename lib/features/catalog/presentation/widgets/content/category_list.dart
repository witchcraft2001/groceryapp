part of '../catalog_screen.dart';

class _CategoryList extends StatelessWidget {
  final bool isLoading;
  final List<Category> items;
  final Category? selected;
  final ValueChanged<Category> onTap;

  const _CategoryList({
    required this.isLoading,
    required this.items,
    this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const _CategoriesShimmer()
        : ListView.builder(
            itemCount: items.length,
            shrinkWrap: true,
            itemBuilder: (_, index) => _CategoryItem(
              item: items[index],
              isSelected: items[index] == selected,
              onTap: onTap,
            ),
          );
  }
}
