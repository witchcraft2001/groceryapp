import 'package:cached_network_image/cached_network_image.dart';
import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery_app/core/theme/data/theme_provider.dart';
import 'package:grocery_app/core/ui/common/app_assets.dart';
import 'package:grocery_app/core/ui/common/app_card.dart';
import 'package:grocery_app/core/ui/common/app_decorations.dart';
import 'package:grocery_app/core/ui/common/app_icon_button.dart';
import 'package:grocery_app/core/ui/common/app_sizes.dart';
import 'package:grocery_app/core/ui/common/svg_icon_button.dart';
import 'package:grocery_app/features/favorites/presentation/bloc/favorites_bloc.dart';
import 'package:grocery_app/features/favorites/presentation/bloc/favorites_view_state.dart';
import 'package:grocery_app/injection.dart';

import '../../../../core/domain/entity/product.dart';
import '../../../../core/ui/common/add_product_to_cart_button.dart';
import '../../../../core/ui/common/grocery_app_bar.dart';
import '../../../../core/ui/common/price_info.dart';

part './content/favorite_item.dart';

part './content/favorite_list.dart';

part './content/favorites_shimmer.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<FavoritesBloc>()..add(const FavoritesEvent.started()),
      child: BlocBuilder<FavoritesBloc, FavoritesState>(
          builder: (context, state) => state.when(
                initial: () => const SizedBox(),
                ready: (state) => _FavoritesScreenInternal(
                  state: state,
                ),
              )),
    );
  }
}

class _FavoritesScreenInternal extends StatelessWidget {
  final FavoritesViewState state;

  const _FavoritesScreenInternal({required this.state});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const GroceryAppBar(
          title: "Favorites",
        ),
        Flexible(
          child: _FavoriteList(
            isLoading: state.isLoading,
            items: state.products,
            onTap: (_) {},
            quantities: state.cartQuantities,
            onIncreaseTap: (Product value) {},
            onDecreaseTap: (Product value) {},
            onRemoveFavoriteTap: (Product value) {},
          ),
        )
      ],
    );
  }
}
