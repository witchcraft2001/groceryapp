// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:grocery_app/core/theme/data/theme_provider.dart';
import 'app_decorations.dart';

class AppShimmerContent extends StatelessWidget {
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final BorderRadius? borderRadius;
  final double? height;
  final double? width;
  final Color? color;

  const AppShimmerContent({
    super.key,
    this.margin,
    this.padding,
    this.borderRadius,
    this.height,
    this.width,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.appTheme!.colors;

    return Container(
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: borderRadius ?? AppDecoration.brBase,
        color: color ?? colors.color2,
      ),
      height: height,
      width: width,
    );
  }
}
