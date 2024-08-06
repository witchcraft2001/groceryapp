// Flutter imports:
// Package imports:
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import 'package:grocery_app/core/data/variables.dart';
import 'package:grocery_app/core/extensions/double_extensions.dart';
import 'package:grocery_app/core/theme/data/theme_provider.dart';
import 'package:grocery_app/core/ui/common/app_assets.dart';
import 'package:grocery_app/core/ui/common/app_card.dart';
import 'package:grocery_app/core/ui/common/app_decorations.dart';
import 'package:grocery_app/core/ui/common/app_sizes.dart';
import 'package:grocery_app/core/ui/common/price_with_discount.dart';
import 'package:grocery_app/features/catalog/domain/entity/product.dart';
import 'package:grocery_app/generated/l10n.dart';

class ProductItem extends StatelessWidget {
  final Product item;
  final int quantity;
  final EdgeInsetsGeometry? padding;
  final ValueChanged<Product> onIncreaseTap;
  final ValueChanged<Product> onDecreaseTap;

  const ProductItem({
    super.key,
    required this.item,
    required this.quantity,
    this.padding,
    required this.onIncreaseTap,
    required this.onDecreaseTap,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: SizedBox(
                      height: AppSizes.productItemImageHeight,
                      child: Stack(
                        children: [CachedNetworkImage(imageUrl: item.cover)],
                      ),
                    ),
                  ),
                ],
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
              _PriceInfo(
                item: item,
                quantity: quantity,
                padding: AppSizes.ph8,
              ),
              const SizedBox(
                height: AppSizes.sp4,
              ),
              _AddProductToCartButton(
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

class _PriceInfo extends StatelessWidget {
  final Product item;
  final int quantity;
  final EdgeInsetsGeometry? padding;

  const _PriceInfo({required this.item, required this.quantity, this.padding});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? AppSizes.p0,
      child: Row(
        children: [
          PriceWithDiscount(
            price: item.price,
            discountPrice: item.priceWithDiscount,
            currency: currency,
            style: context.appTheme?.text.w600s12cSignatures.copyWith(
              color: context.appTheme?.colors.textBlack,
            ),
          ),
          const SizedBox(
            width: AppSizes.sp4,
          ),
          Text(
            item.priceDescription,
            style: context.appTheme?.text.w400s11cSignatures,
          ),
        ],
      ),
    );
  }
}

class _AddProductToCartButton extends StatelessWidget {
  final int quantity;
  final double multiplicity;
  final String quantityUnit;
  final Function() onIncreaseTap;
  final Function() onDecreaseTap;

  const _AddProductToCartButton({
    required this.quantity,
    required this.multiplicity,
    required this.quantityUnit,
    required this.onIncreaseTap,
    required this.onDecreaseTap,
  });

  @override
  Widget build(BuildContext context) {
    return quantity == 0
        ? _AddToCartButton(
            padding: AppSizes.p8,
            onIncreaseTap: onIncreaseTap,
          )
        : _PlusMinusButton(
            padding: AppSizes.p8,
            quantity: quantity,
            quantityUnit: quantityUnit,
            onIncreaseTap: onIncreaseTap,
            onDecreaseTap: onDecreaseTap,
            multiplicity: multiplicity,
          );
  }
}

class _AddToCartButton extends StatelessWidget {
  final EdgeInsetsGeometry? padding;
  final Function() onIncreaseTap;

  const _AddToCartButton({this.padding, required this.onIncreaseTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: SizedBox(
        height: AppSizes.cartButtonSize,
        child: Material(
          borderRadius: AppDecoration.brBtnOther,
          color: context.appTheme?.colors.primary,
          child: InkWell(
            onTap: onIncreaseTap,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    AppAssets.iconCart,
                    width: AppSizes.cartButtonIconSize,
                    height: AppSizes.cartButtonIconSize,
                    colorFilter:
                        ColorFilter.mode(context.appTheme!.colors.whiteOnColor, BlendMode.srcIn),
                  ),
                  const SizedBox(
                    width: AppSizes.sp4,
                  ),
                  Text(
                    S.current.addToCart,
                    style: context.appTheme?.text.w600s12cSignatures.copyWith(
                      color: context.appTheme?.colors.whiteOnColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _PlusMinusButton extends StatelessWidget {
  final EdgeInsetsGeometry? padding;
  final int quantity;
  final double multiplicity;
  final String quantityUnit;
  final Function() onIncreaseTap;
  final Function() onDecreaseTap;

  const _PlusMinusButton({
    this.padding,
    required this.onIncreaseTap,
    required this.onDecreaseTap,
    required this.quantity,
    required this.multiplicity,
    required this.quantityUnit,
  });

  @override
  Widget build(BuildContext context) {
    final style = context.appTheme?.text.w400s10cOptional.copyWith(
      color: context.appTheme?.colors.primary,
    );

    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: SizedBox(
        height: AppSizes.cartButtonSize,
        child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: context.appTheme!.colors.primary),
              borderRadius: AppDecoration.brBtnOther,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _IconButton(
                  onTap: onDecreaseTap,
                  icon: AppAssets.iconMinus,
                ),
                Flexible(
                  child: Padding(
                    padding: AppSizes.p2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          (quantity * multiplicity).toPlainString(),
                          style: style,
                        ),
                        Row(children: [
                          Flexible(
                            child: Center(
                              child: Text(
                                quantityUnit,
                                style: style,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        ])
                      ],
                    ),
                  ),
                ),
                _IconButton(
                  onTap: onIncreaseTap,
                  icon: AppAssets.iconAdd,
                )
              ],
            )),
      ),
    );
  }
}

class _IconButton extends StatelessWidget {
  final Function() onTap;
  final String icon;

  const _IconButton({required this.onTap, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppSizes.p2,
      child: InkWell(
        borderRadius: AppDecoration.brBtnOther,
        onTap: onTap,
        child: Padding(
          padding: AppSizes.p2,
          child: SvgPicture.asset(
            icon,
            width: AppSizes.cartButtonIconSize,
            height: AppSizes.cartButtonIconSize,
            colorFilter: ColorFilter.mode(context.appTheme!.colors.primary, BlendMode.srcIn),
          ),
        ),
      ),
    );
  }
}

class _OneMoreButton extends StatelessWidget {
  final int quantity;
  final double multiplicity;
  final String priceDescription;

  const _OneMoreButton(this.quantity, this.multiplicity, this.priceDescription);

  @override
  Widget build(BuildContext context) {
    final style = context.appTheme?.text.w400s10cOptional.copyWith(
      color: context.appTheme?.colors.primary,
    );

    return SizedBox(
      width: AppSizes.cartButtonSize,
      height: AppSizes.cartButtonSize,
      child: Stack(
        children: [
          Container(
            margin: AppSizes.p2,
            decoration: BoxDecoration(
              border: Border.all(color: context.appTheme!.colors.primary),
              borderRadius: AppDecoration.brBtnOther,
            ),
            child: Padding(
              padding: AppSizes.p2,
              child: Column(
                children: [
                  Text(
                    (quantity * multiplicity).toPlainString(),
                    style: style,
                  ),
                  Row(children: [
                    Flexible(
                      child: Text(
                        priceDescription,
                        style: style,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ])
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
