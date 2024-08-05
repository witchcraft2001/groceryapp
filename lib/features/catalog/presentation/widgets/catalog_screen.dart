// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app/core/extensions/context_extensions.dart';

// Project imports:
import 'package:grocery_app/core/theme/data/theme_provider.dart';
import 'package:grocery_app/core/ui/common/app_decorations.dart';
import 'package:grocery_app/core/ui/common/app_shimmer.dart';
import 'package:grocery_app/core/ui/common/app_shimmer_content.dart';
import 'package:grocery_app/core/ui/common/app_sizes.dart';
import 'package:grocery_app/features/catalog/domain/entity/category.dart';
import 'package:grocery_app/features/catalog/domain/entity/product.dart';
import 'package:grocery_app/features/catalog/presentation/bloc/catalog_bloc.dart';
import 'package:grocery_app/features/catalog/presentation/bloc/catalog_view_state.dart';

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
      // mainAxisSize: MainAxisSize.max,
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
                ),
              ),
              Flexible(child: _ProductList(isLoading: state.isProductsLoading, items: state.products)),
            ],
          ),
        )
      ],
    );
  }
}
