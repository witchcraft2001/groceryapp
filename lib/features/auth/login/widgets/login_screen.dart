// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import 'package:grocery_app/core/extensions/context_extensions.dart';
import 'package:grocery_app/core/theme/data/theme_provider.dart';
import 'package:grocery_app/core/ui/common/app_button.dart';
import 'package:grocery_app/core/ui/common/app_sizes.dart';
import 'package:grocery_app/generated/l10n.dart';
import '../../../../core/ui/common/app_assets.dart';
import '../../../../core/ui/common/svg_icon_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: Colors.transparent,
            ),
            backgroundColor: const Color(0xFFFFB8A1),
            leading: Padding(
              padding: AppSizes.pl8,
              child: SvgIconButton(
                asset: AppAssets.iconChevronLeft,
                color: context.appTheme?.colors.textMain,
                onClick: () => Navigator.of(context).pop(),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: context.height / 2,
              ),
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
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: AppSizes.ph48,
                      child: SvgPicture.asset(
                        AppAssets.imageWoman,
                        fit: BoxFit.none,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: AppSizes.ph16,
                      child: Text(
                        S.current.login,
                        style: context.appTheme?.text.w700s24cMain.copyWith(
                          color: context.appTheme?.colors.whiteOnColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: AppSizes.p16,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'E-Mail',
                    style: context.appTheme?.text.w400s14cMain,
                  ),
                  const SizedBox(height: AppSizes.sp4,),
                  TextField(),
                  const SizedBox(height: AppSizes.sp16,),
                  Text(
                    'Password',
                    style: context.appTheme?.text.w400s14cMain,
                  ),
                  Padding(
                    padding: AppSizes.pt4,
                    child: TextField(),
                  ),
                  AppButton(
                    padding: AppSizes.pt16,
                    title: S.current.login,
                  ),
                  Padding(
                    padding: AppSizes.pt16,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          S.current.noAccount,
                          style: context.appTheme?.text.w400s12cMain.copyWith(
                            color: context.appTheme?.colors.primary,
                          ),
                        ),
                        const SizedBox(
                          width: AppSizes.sp4,
                        ),
                        Text(
                          S.current.register,
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
          ),
        ],
      ),
    );
  }
}
