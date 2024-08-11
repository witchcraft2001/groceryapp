import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_app/core/theme/data/theme_provider.dart';

import 'app_assets.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'GroceryApp',
          style: context.appTheme?.text.w700s24cMain.copyWith(
            color: context.appTheme?.colors.whiteOnColor,
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        SvgPicture.asset(
          AppAssets.iconLogo,
          width: 28,
          height: 28,
        ),
      ],
    );
  }
}
