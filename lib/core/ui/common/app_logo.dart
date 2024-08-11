// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import 'package:grocery_app/core/theme/data/theme_provider.dart';
import '../../../generated/l10n.dart';
import 'app_assets.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          S.current.appName,
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
