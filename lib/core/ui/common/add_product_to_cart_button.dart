// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import 'package:grocery_app/core/extensions/double_extensions.dart';
import 'package:grocery_app/core/theme/data/theme_provider.dart';
import '../../../generated/l10n.dart';
import 'app_assets.dart';
import 'app_decorations.dart';
import 'app_icon_button.dart';
import 'app_sizes.dart';

class AddProductToCartButton extends StatelessWidget {
  final int quantity;
  final double multiplicity;
  final String quantityUnit;
  final EdgeInsetsGeometry? padding;
  final Function() onIncreaseTap;
  final Function() onDecreaseTap;

  const AddProductToCartButton({
    super.key,
    required this.quantity,
    required this.multiplicity,
    required this.quantityUnit,
    required this.onIncreaseTap,
    required this.onDecreaseTap,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        quantity == 0
            ? _AddToCartButton(
                padding: padding ?? EdgeInsets.zero,
                onIncreaseTap: onIncreaseTap,
              )
            : Container(),
        quantity > 0
            ? _PlusMinusButton(
                padding: padding ?? EdgeInsets.zero,
                quantity: quantity > 1 ? quantity : 1,
                quantityUnit: quantityUnit,
                onIncreaseTap: onIncreaseTap,
                onDecreaseTap: onDecreaseTap,
                multiplicity: multiplicity,
              )
            : Container(),
      ],
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
                AppIconButton(
                  padding: AppSizes.p2,
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
                AppIconButton(
                  padding: AppSizes.p2,
                  onTap: onIncreaseTap,
                  icon: AppAssets.iconAdd,
                )
              ],
            )),
      ),
    );
  }
}
