// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import 'package:grocery_app/core/theme/data/theme_provider.dart';

class SvgIconButton extends StatelessWidget {
  final String asset;
  final Color? color;
  final bool noColorFilter;
  final VoidCallback onClick;

  const SvgIconButton({
    super.key,
    required this.asset,
    required this.onClick,
    this.color,
    this.noColorFilter = false,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.zero,
      splashRadius: 24.0,
      icon: SvgPicture.asset(
        asset,
        colorFilter: !noColorFilter
            ? ColorFilter.mode(
                color ?? context.appTheme?.colors.primary ?? Colors.white,
                BlendMode.srcIn,
              )
            : null,
      ),
      onPressed: onClick,
    );
  }
}
