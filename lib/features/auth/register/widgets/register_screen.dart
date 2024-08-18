// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:grocery_app/core/theme/data/theme_provider.dart';
import 'package:grocery_app/core/ui/common/app_button.dart';
import 'package:grocery_app/core/ui/common/app_sizes.dart';
import 'package:grocery_app/generated/l10n.dart';

import '../../../../core/ui/common/app_assets.dart';
import '../../../../core/ui/common/app_decorations.dart';
import '../../../../core/ui/common/app_logo.dart';
import '../../../../core/ui/common/app_textfield.dart';
import '../../../../core/ui/common/svg_icon_button.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FractionallySizedBox(
          widthFactor: 1.0,
          heightFactor: 1.0,
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppAssets.bgAuthorize),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                Flexible(
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
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
                                offset: const Offset(0, 3),
                              ),
                            ],
                            color: context.appTheme?.colors.bgHeaders,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                S.current.createAccount,
                                style: context.appTheme?.text.w600s16cMain,
                              ),
                              const SizedBox(
                                height: AppSizes.sp4,
                              ),
                              Text(
                                S.current.createAccountSubtitle,
                                style: context.appTheme?.text.w600s14cSignatures,
                              ),
                              const SizedBox(
                                height: AppSizes.sp12,
                              ),
                              AppTextField(
                                label: S.current.firstName,
                                text: '',
                                onChanged: (String value) {},
                              ),
                              const SizedBox(
                                height: AppSizes.sp8,
                              ),
                              AppTextField(
                                label: S.current.email,
                                text: '',
                                onChanged: (String value) {},
                              ),
                              const SizedBox(
                                height: AppSizes.sp8,
                              ),
                              AppTextField(
                                label: S.current.phone,
                                text: '',
                                onChanged: (String value) {},
                              ),
                              const SizedBox(
                                height: AppSizes.sp8,
                              ),
                              AppTextField(
                                label: S.current.password,
                                text: '',
                                onChanged: (String value) {},
                              ),
                              AppButton(
                                padding: AppSizes.pt16,
                                title: S.current.register,
                              ),
                              Padding(
                                padding: AppSizes.pt16,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      S.current.haveAccount,
                                      style: context.appTheme?.text.w400s12cMain.copyWith(
                                        color: context.appTheme?.colors.primary,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: AppSizes.sp4,
                                    ),
                                    Text(
                                      S.current.login,
                                      style: context.appTheme?.text.w600s12cSignatures.copyWith(
                                        color: context.appTheme?.colors.primary,
                                      ),
                                    ),
                                  ],
                                ),
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
        ),
      ),
    );
  }
}
