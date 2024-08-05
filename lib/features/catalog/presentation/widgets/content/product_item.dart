import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app/core/theme/data/theme_provider.dart';
import 'package:grocery_app/core/ui/common/app_assets.dart';
import 'package:grocery_app/core/ui/common/app_card.dart';
import 'package:grocery_app/core/ui/common/app_decorations.dart';
import 'package:grocery_app/core/ui/common/app_sizes.dart';
import 'package:grocery_app/core/ui/common/svg_icon_button.dart';
import 'package:grocery_app/core/util/price_formatter.dart';
import 'package:grocery_app/features/catalog/domain/entity/product.dart';

class ProductItem extends StatelessWidget {
  final Product item;
  final int quantity;
  final EdgeInsetsGeometry? padding;

  const ProductItem({super.key, required this.item, required this.quantity, this.padding});

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
                height: AppSizes.sp12,
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
                            style: context.appTheme?.text.w400s12cSignatures
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
                height: AppSizes.sp12,
              ),
              _PriceInfo(
                item: item,
                quantity: quantity,
                padding: AppSizes.ph8,
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                formatPrice(context, item.price, 'EUR'),
                style: context.appTheme?.text.w600s12cSignatures
                    .copyWith(color: context.appTheme?.colors.textBlack),
              ),
              Text(
                item.priceDescription,
                style: context.appTheme?.text.w400s11cSignatures,
              ),
            ],
          ),
          quantity == 0 ? _CartButton() : _CartButton(),
          // SvgIconButton(
          //   asset: AppAssets.iconCart,
          //   color: context.appTheme?.colors.primary,
          //   onClick: () {},
          // ),
        ],
      ),
    );
  }
}

class _CartButton extends StatelessWidget {
  const _CartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSizes.cartButtonSize,
      height: AppSizes.cartButtonSize,
      decoration: BoxDecoration(
        borderRadius: AppDecoration.brBtnOther,
        color: context.appTheme?.colors.primary,
      ),
      child: Center(
        child: SizedBox(
          height: AppSizes.cartButtonIconSize,
          child: SvgPicture.asset(
            AppAssets.iconCart,
            colorFilter: ColorFilter.mode(
              context.appTheme!.colors.whiteOnColor,
              BlendMode.srcIn,
            ),
          ),
        ),
      ),
    );
  }
}
