part of '../catalog_screen.dart';

class _ProductList extends StatelessWidget with ProductItemCrossAxisCountCalculator {
  final bool isLoading;
  final List<Product> items;
  final Map<int, int> quantities;
  final ValueChanged<Product> onIncreaseTap;
  final ValueChanged<Product> onDecreaseTap;

  const _ProductList({
    required this.isLoading,
    required this.items,
    required this.quantities,
    required this.onIncreaseTap,
    required this.onDecreaseTap,
  });

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const _ProductsShimmer()
        : GridView.builder(
            padding: AppSizes.ph8,
            itemCount: items.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: getItemCountCrossAxis(context),
              childAspectRatio: getAspectRatio(context),
            ),
            itemBuilder: (_, index) {
              final item = items[index];
              return ProductItem(
                item: item,
                quantity: quantities[item.id] ?? 0,
                padding: AppSizes.p4,
                onIncreaseTap: onIncreaseTap,
                onDecreaseTap: onDecreaseTap,
              );
            },
          );
  }
}
