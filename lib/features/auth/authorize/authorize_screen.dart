// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:grocery_app/core/common/app_routes.dart';
import 'package:grocery_app/core/theme/data/theme_provider.dart';
import 'package:grocery_app/core/ui/common/app_button.dart';
import 'package:grocery_app/core/ui/common/app_decorations.dart';
import 'package:grocery_app/core/ui/common/app_sizes.dart';
import 'package:grocery_app/generated/l10n.dart';
import '../../../core/ui/common/app_assets.dart';
import '../../../core/ui/common/app_logo.dart';
import '../../../core/ui/common/svg_icon_button.dart';

class AuthorizeScreen extends StatelessWidget {
  const AuthorizeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Positioned(
                    top: 0,
                    bottom: 0,
                    child: Image.asset(
                      AppAssets.bgRegister,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: AppSizes.p12,
                      child: Container(
                        height: AppSizes.iconButtonSize,
                        width: AppSizes.iconButtonSize,
                        decoration: BoxDecoration(
                          borderRadius: AppDecoration.brBtnRounded,
                          color: context.appTheme?.colors.textMain.withAlpha(120),
                        ),
                        child: SvgIconButton(
                          asset: AppAssets.iconChevronLeft,
                          color: context.appTheme?.colors.whiteOnColor,
                          onClick: () => Navigator.of(context).pop(),
                        ),
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: AppSizes.p16,
                      child: AppLogo(),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: AppSizes.p16,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(AppSizes.sp12),
                          topRight: Radius.circular(AppSizes.sp12),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: context.appTheme!.colors.textMain.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        color: context.appTheme?.colors.bgHeaders,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            S.current.welcome,
                            style: context.appTheme?.text.w600s16cMain,
                          ),
                          AppButton(
                            padding: AppSizes.pt16,
                            title: S.current.login,
                            onPressed: () => AppRoutes.pushLogin(context),
                          ),
                          AppButton(
                            padding: AppSizes.pt8,
                            title: S.current.register,
                            style: Style.outline,
                            onPressed: () => AppRoutes.pushRegister(context),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
