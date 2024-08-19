// Flutter imports:

// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:grocery_app/core/theme/data/theme_provider.dart';
import 'package:grocery_app/core/ui/common/app_card.dart';
import 'package:grocery_app/core/ui/common/app_sizes.dart';
import 'package:grocery_app/core/ui/common/price_info.dart';
import '../../domain/entity/product.dart';
import 'add_product_to_cart_button.dart';
import 'favorite_button.dart';
import 'network_image_with_shimmer.dart';

class ProductItem extends StatelessWidget {
  final Product item;
  final int quantity;
  final String currency;
  final EdgeInsetsGeometry? padding;
  final ValueChanged<Product> onIncreaseTap;
  final ValueChanged<Product> onDecreaseTap;
  final ValueChanged<Product> onFavoriteTap;

  const ProductItem({
    super.key,
    required this.item,
    required this.quantity,
    this.padding,
    required this.onIncreaseTap,
    required this.onDecreaseTap,
    required this.onFavoriteTap,
    required this.currency,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? AppSizes.p0,
      child: AppCard(
        child: SizedBox(
          height: AppSizes.productItemHeight,
          // constraints: const BoxConstraints(
          //     minWidth: AppSizes.productItemWidth, maxWidth: AppSizes.productItemWidth * 2,
          //   minHeight: AppSizes.productItemHeight,
          // ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: AppSizes.productItemImageHeight,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    NetworkImageWithShimmer(url: item.cover,
                      height: AppSizes.productItemImageHeight,
                      // width: AppSizes.productImageSize,
                      padding: AppSizes.pr8,
                      borderRadius: BorderRadius.zero,
                    ),
                    // CachedNetworkImage(imageUrl: item.cover),
                    Positioned(
                      top: AppSizes.sp8,
                      right: AppSizes.sp8,
                      child: FavoriteButton(
                        isFavorite: item.isFavorite,
                        onTap: () => onFavoriteTap(item),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: AppSizes.sp8,
              ),
              Padding(
                padding: AppSizes.ph8,
                child: SizedBox(
                  height: AppSizes.productItemTitleHeight,
                  child: Center(
                    child: Row(
                      children: [
                        Flexible(
                          child: Text(
                            item.name,
                            style: context.appTheme?.text.w600s12cSignatures
                                .copyWith(color: context.appTheme?.colors.textContrast),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: AppSizes.sp4,
              ),
              PriceInfo(
                item: item,
                quantity: quantity,
                currency: currency,
                padding: AppSizes.ph8,
              ),
              const SizedBox(
                height: AppSizes.sp4,
              ),
              AddProductToCartButton(
                key: ValueKey(item.id),
                padding: AppSizes.p8,
                quantity: quantity,
                quantityUnit: item.quantityUnit,
                multiplicity: item.multiplicity,
                onIncreaseTap: () => onIncreaseTap(item),
                onDecreaseTap: () => onDecreaseTap(item),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
