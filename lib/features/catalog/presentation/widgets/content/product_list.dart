part of '../catalog_screen.dart';

class _ProductList extends StatelessWidget {
  final bool isLoading;
  final List<Product> items;

  const _ProductList({super.key, required this.isLoading, required this.items});

  @override
  Widget build(BuildContext context) {
    return isLoading ? const _ProductsShimmer() : const Placeholder();
  }
}
