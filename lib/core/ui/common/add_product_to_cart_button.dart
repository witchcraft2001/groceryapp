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

class AddProductToCartButton extends StatefulWidget {
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
  State<AddProductToCartButton> createState() => _AddProductToCartButtonState();
}

class _AddProductToCartButtonState extends State<AddProductToCartButton>
    with TickerProviderStateMixin {
  late AnimationController _opacityController;
  late Animation<double> _opacityAnimation;

  double _opacityValue = 0.0;

  @override
  void initState() {
    _opacityValue = widget.quantity > 1 ? 1.0 : 0.0;
    _opacityController = AnimationController(
      vsync: this,
      lowerBound: 0.0,
      upperBound: 1.0,
      duration: const Duration(milliseconds: 300),
    );
    _opacityAnimation = CurvedAnimation(parent: _opacityController, curve: Curves.easeInOut);
    _opacityController.addListener(() {
      setState(() {
        _opacityValue = _opacityAnimation.value;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _opacityValue < 0.95
            ? Opacity(
                opacity: 1.0 - _opacityValue,
                child: _AddToCartButton(
                  padding: widget.padding ?? EdgeInsets.zero,
                  onIncreaseTap: widget.onIncreaseTap,
                ),
              )
            : Container(),
        _opacityValue > 0.05
            ? Opacity(
                opacity: _opacityValue,
                child: _PlusMinusButton(
                  padding: widget.padding ?? EdgeInsets.zero,
                  quantity: widget.quantity > 1 ? widget.quantity : 1,
                  quantityUnit: widget.quantityUnit,
                  onIncreaseTap: widget.onIncreaseTap,
                  onDecreaseTap: widget.onDecreaseTap,
                  multiplicity: widget.multiplicity,
                ),
              )
            : Container(),
      ],
    );
  }

  @override
  void didUpdateWidget(covariant AddProductToCartButton oldWidget) {
    if (oldWidget.quantity == 0 && widget.quantity != 0) {
      _opacityController.stop();
      _opacityController.forward();
    } else if (oldWidget.quantity != 0 && widget.quantity == 0) {
      _opacityController.stop();
      _opacityController.reverse();
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _opacityController.dispose();
    super.dispose();
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
