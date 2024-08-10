// Flutter imports:

// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:cached_network_image/cached_network_image.dart';
import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:grocery_app/core/extensions/context_extensions.dart';
import 'package:grocery_app/core/theme/data/theme_provider.dart';
import 'package:grocery_app/core/ui/common/app_button.dart';
import 'package:grocery_app/core/ui/common/app_decorations.dart';
import 'package:grocery_app/core/ui/common/app_sizes.dart';
import 'package:grocery_app/injection.dart';
import '../../../../core/domain/entity/product.dart';
import '../../../../core/ui/common/add_product_to_cart_button.dart';
import '../../../../core/ui/common/grocery_app_bar.dart';
import '../../../../core/ui/common/network_image_with_shimmer.dart';
import '../../../../core/ui/common/price_info.dart';
import '../../../../core/util/price_formatter.dart';
import '../../../../core/util/product_price_calculator.dart';
import '../../../../generated/l10n.dart';
import '../bloc/cart_bloc.dart';
import '../bloc/cart_view_state.dart';
import 'content/recommendation_list.dart';

part './content/cart_item.dart';

part './content/cart_list.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<CartBloc>()..add(const CartEvent.started()),
      child: BlocBuilder<CartBloc, CartState>(
          builder: (context, state) => state.when(
                initial: () => const SizedBox(),
                ready: (state) => _CartScreenInternal(
                  state: state,
                ),
              )),
    );
  }
}

class _CartScreenInternal extends StatelessWidget {
  final CartViewState state;

  const _CartScreenInternal({required this.state});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GroceryAppBar(
          title: S.current.cart,
        ),
        Flexible(
          child: _CartList(
            isLoading: state.isLoading,
            items: state.products,
            onTap: (_) {},
            quantities: state.cartQuantities,
            currency: state.currency,
            cartPrice: state.cartPrice,
            cartPriceWithoutDiscount: state.cartPriceWithoutDiscount,
            discount: state.discount,
            deliveryPrice: state.deliveryPrice,
            totalPrice: state.totalPrice,
            isReadyToOrder: state.isReadyToOrder,
            minOrderPrice: state.minOrderPrice,
            isRecommendationsLoading: state.isRecommendationsLoading,
            recommendedProducts: state.recommendedProducts,
            onIncreaseTap: (product) =>
                context.bloc<CartBloc>().add(CartEvent.onIncreaseProduct(product)),
            onDecreaseTap: (product) =>
                context.bloc<CartBloc>().add(CartEvent.onDecreaseProduct(product)),
            onFavoriteTap: (product) =>
                context.bloc<CartBloc>().add(CartEvent.onToggleFavoriteProduct(product)),
          ),
        )
      ],
    );
  }
}
