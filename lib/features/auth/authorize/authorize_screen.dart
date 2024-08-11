// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import 'package:grocery_app/core/common/app_routes.dart';
import 'package:grocery_app/core/theme/data/theme_provider.dart';
import 'package:grocery_app/core/ui/common/app_button.dart';
import 'package:grocery_app/core/ui/common/app_decorations.dart';
import 'package:grocery_app/core/ui/common/app_sizes.dart';
import 'package:grocery_app/core/ui/common/svg_icon_button.dart';
import 'package:grocery_app/generated/l10n.dart';
import '../../../core/ui/common/app_assets.dart';
import '../../../core/ui/common/app_logo.dart';

class AuthorizeScreen extends StatelessWidget {
  const AuthorizeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            child: Stack(
              fit: StackFit.expand,
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: SvgPicture.asset(
                    AppAssets.bgEllipse,
                    fit: BoxFit.fill,
                  ),
                ),
                SvgPicture.asset(
                  AppAssets.imagePeople,
                  fit: BoxFit.none,
                ),
                const Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: AppSizes.pt64,
                    child: AppLogo(),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: AppSizes.pr16pt40,
                    child: Container(
                        width: AppSizes.sp32,
                        height: AppSizes.sp32,
                        decoration: BoxDecoration(
                          borderRadius: AppDecoration.brBtnRounded,
                          color: context.appTheme?.colors.bgWhite.withAlpha(120),
                        ),
                        child: SvgIconButton(
                            asset: AppAssets.iconClose,
                            color: context.appTheme?.colors.textMain,
                            onClick: () => Navigator.of(context).pop())),
                  ),
                ),
              ],
            ),
          ),
          AppButton(
            padding: AppSizes.ph16v8,
            title: S.current.login,
            onPressed: () => AppRoutes.pushLogin(context),
          ),
          AppButton(
            padding: AppSizes.ph16t4b16,
            title: S.current.register,
            style: Style.outline,
          ),
        ],
      ),
    );
  }
}
