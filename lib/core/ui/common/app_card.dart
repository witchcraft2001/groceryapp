// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:grocery_app/core/theme/data/theme_provider.dart';

class AppCard extends StatelessWidget {
  final Widget child;
  final Color? backgroundColor;
  final Color? borderColor;
  final double? radius;
  final EdgeInsetsGeometry? padding;

  const AppCard({
    super.key,
    required this.child,
    this.backgroundColor,
    this.borderColor,
    this.radius = 8.0,
    this.padding,
  });

  @override
  Widget build(BuildContext context) => padding != null
      ? Padding(
          padding: padding!,
          child: _getContent(context),
        )
      : _getContent(context);

  Widget _getContent(BuildContext context) => Card(
        shadowColor: context.appTheme!.colors.color2,
        color: backgroundColor ?? Colors.white,
        elevation: 4.0,
        margin: const EdgeInsets.all(1.0),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: borderColor ?? context.appTheme!.colors.color2, width: 1),
          borderRadius: BorderRadius.circular(radius!),
        ),
        child: child,
      );
}
