// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:grocery_app/core/theme/data/theme_provider.dart';
import 'package:grocery_app/core/ui/common/app_sizes.dart';

class AppLabel extends StatelessWidget {
  final String text;
  final EdgeInsets? padding;

  const AppLabel({
    super.key,
    required this.text,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? AppSizes.pb8,
      child: Text(
        text,
        style: context.appTheme?.text.w400s14cSignatures,
      ),
    );
  }
}
