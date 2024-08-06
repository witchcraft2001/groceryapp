import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app/core/theme/data/theme_provider.dart';

import 'app_decorations.dart';
import 'app_sizes.dart';

class AppIconButton extends StatelessWidget {
  final Function() onTap;
  final EdgeInsetsGeometry? padding;
  final Color? foreground;
  final String icon;

  const AppIconButton({super.key,
    required this.onTap,
    required this.icon,
    this.padding,
    this.foreground,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: InkWell(
        borderRadius: AppDecoration.brBtnOther,
        onTap: onTap,
        child: Padding(
          padding: AppSizes.p2,
          child: SvgPicture.asset(
            icon,
            width: AppSizes.cartButtonIconSize,
            height: AppSizes.cartButtonIconSize,
            colorFilter: ColorFilter.mode(
              foreground ?? context.appTheme!.colors.primary,
              BlendMode.srcIn,
            ),
          ),
        ),
      ),
    );
  }
}
