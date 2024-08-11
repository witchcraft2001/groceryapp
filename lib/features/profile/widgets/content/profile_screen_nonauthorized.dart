part of '../profile_screen.dart';

class _ProfileScreenNonAuthorized extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GroceryAppBar(
          title: S.current.profile,
        ),
        Flexible(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                S.current.notAuthorizedYet,
                style: context.appTheme?.text.w600s16cMain,
              ),
              AppButton(
                padding: AppSizes.p16,
                title: S.current.authorize,
                onPressed: ()=>AppRoutes.pushAuthorize(context),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
