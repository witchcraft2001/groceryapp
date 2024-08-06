// Flutter imports:

// Package imports:
import 'package:cached_network_image/cached_network_image.dart';

// Flutter imports:
import 'package:flutter/material.dart';
import 'package:grocery_app/core/theme/data/theme_provider.dart';
import 'package:grocery_app/core/ui/common/app_assets.dart';
import 'package:grocery_app/core/ui/common/app_card.dart';
import 'package:grocery_app/core/ui/common/app_decorations.dart';
import 'package:grocery_app/core/ui/common/app_icon_button.dart';
import 'package:grocery_app/core/ui/common/app_sizes.dart';
import 'package:grocery_app/core/ui/common/price_info.dart';

import '../../../../../core/domain/entity/product.dart';
import '../../../../../core/ui/common/add_product_to_cart_button.dart';

class ProductItem extends StatelessWidget {
  final Product item;
  final int quantity;
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
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? AppSizes.p0,
      child: AppCard(
        child: SizedBox(
          height: AppSizes.productItemHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: AppSizes.productItemImageHeight,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    CachedNetworkImage(imageUrl: item.cover),
                    Positioned(
                      top: AppSizes.sp8,
                      right: AppSizes.sp8,
                      child: _FavoriteButton(
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
                padding: AppSizes.ph8,
              ),
              const SizedBox(
                height: AppSizes.sp4,
              ),
              AddProductToCartButton(
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

class _FavoriteButton extends StatelessWidget {
  final bool isFavorite;
  final Function() onTap;

  const _FavoriteButton({required this.isFavorite, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: AppDecoration.brBtnOther,
      color: context.appTheme?.colors.brAndIconsShapes,
      child: AppIconButton(
        onTap: onTap,
        icon: isFavorite ? AppAssets.iconHeartFill : AppAssets.iconHeartLine,
      ),
    );
  }
}
