// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:grocery_app/core/theme/data/theme_provider.dart';
import 'app_assets.dart';
import 'app_decorations.dart';
import 'app_icon_button.dart';

class FavoriteButton extends StatelessWidget {
  final bool isFavorite;
  final Function() onTap;

  const FavoriteButton({super.key, required this.isFavorite, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: AppDecoration.brBtnOther,
      color: context.appTheme?.colors.brAndIconsShapes,
      child: AppIconButton(
        onTap: onTap,
        icon: isFavorite ? AppAssets.iconHeartFill : AppAssets.iconHeartLine,
      ),
    );
  }
}
