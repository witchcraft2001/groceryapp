// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import 'package:grocery_app/core/domain/entity/category.dart';
import 'package:grocery_app/core/domain/entity/product.dart';
import 'package:grocery_app/core/extensions/context_extensions.dart';
import 'package:grocery_app/core/theme/data/theme_provider.dart';
import 'package:grocery_app/core/ui/common/app_decorations.dart';
import 'package:grocery_app/core/ui/common/app_shimmer.dart';
import 'package:grocery_app/core/ui/common/app_shimmer_content.dart';
import 'package:grocery_app/core/ui/common/app_sizes.dart';
import 'package:grocery_app/features/catalog/presentation/bloc/catalog_bloc.dart';
import 'package:grocery_app/features/catalog/presentation/bloc/catalog_view_state.dart';
import 'package:grocery_app/features/catalog/presentation/mixin/product_item_cross_axis_count_calculator.dart';
import 'package:grocery_app/features/catalog/presentation/widgets/content/product_item.dart';
import '../../../../core/ui/common/grocery_app_bar.dart';
import '../../../../injection.dart';

part './content/categories_shimmer.dart';

part './content/category_item.dart';

part './content/category_list.dart';

part './content/product_list.dart';

part './content/products_shimmer.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<CatalogBloc>()..add(const CatalogEvent.started()),
      child: BlocBuilder<CatalogBloc, CatalogState>(
          builder: (context, state) => state.when(
                initial: () => const SizedBox(),
                ready: (state) => _CatalogScreenInternal(
                  state: state,
                ),
              )),
    );
  }
}

class _CatalogScreenInternal extends StatelessWidget {
  final CatalogViewState state;

  const _CatalogScreenInternal({required this.state});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const GroceryAppBar(
          elevation: 0.0,
          title: 'Something',
        ),
        Flexible(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: AppSizes.categoryListWidth,
                child: _CategoryList(
                  isLoading: state.isCategoriesLoading,
                  items: state.categories,
                  selected: state.selectedCategory,
                  onTap: (category) =>
                      context.bloc<CatalogBloc>().add(CatalogEvent.categorySelected(category)),
                ),
              ),
              Flexible(
                child: _ProductList(
                  isLoading: state.isProductsLoading,
                  items: state.products,
                  quantities: state.cartQuantities,
                  onIncreaseTap: (product) =>
                      context.bloc<CatalogBloc>().add(CatalogEvent.onIncreaseProduct(product)),
                  onDecreaseTap: (product) =>
                      context.bloc<CatalogBloc>().add(CatalogEvent.onDecreaseProduct(product)),
                  onFavoriteTap: (product) =>
                      context.bloc<CatalogBloc>().add(CatalogEvent.onToggleFavoriteProduct(product)),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
