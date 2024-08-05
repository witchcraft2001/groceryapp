// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:grocery_app/core/theme/data/theme_provider.dart';
import 'package:grocery_app/core/ui/common/app_assets.dart';
import 'app_sizes.dart';
import 'svg_icon_button.dart';

class GroceryAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double elevation;
  final String? title;
  final Widget? titleWidget;
  final List<Widget>? actions;
  final double? toolbarHeight;
  final EdgeInsets? titlePadding;
  final VoidCallback? onBackPressed;
  final Widget? backgroundWidget;

  const GroceryAppBar({
    super.key,
    required this.elevation,
    this.title,
    this.titleWidget,
    this.actions,
    this.toolbarHeight,
    this.onBackPressed,
    this.titlePadding, this.backgroundWidget,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: elevation,
      toolbarHeight: preferredSize.height,
      centerTitle: true,
      backgroundColor: elevation == 0.0 ? context.appTheme?.colors.bgForms : Colors.white,
      automaticallyImplyLeading: false,
      titleSpacing: 0,
      title: Stack(
        alignment: Alignment.centerLeft,
        children: [
          backgroundWidget != null ? backgroundWidget! : Container(),
          _getTitle(context),
          _getLeadingButton(context),
          _getActions(context),
        ],
      ),
    );
  }

  Widget _getTitle(BuildContext context) {
    return Padding(
      padding: titlePadding ?? AppSizes.ph48,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: titleWidget ??
                Text(
                  title ?? '',
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall
                      ?.copyWith(color: context.appTheme?.colors.textMain, fontSize: 22.0),
                ),
          ),
        ],
      ),
    );
  }

  Widget _getLeadingButton(BuildContext context) {
    return onBackPressed != null
        ? Padding(
            padding: AppSizes.pl8,
            child: SvgIconButton(
              asset: AppAssets.iconChevronLeft,
              color: context.appTheme?.colors.textMain,
              onClick: onBackPressed!,
            ),
          )
        : Container();
  }

  Widget _getActions(BuildContext context) {
    return actions != null
        ? Padding(
            padding: AppSizes.pr8,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: actions ?? <Widget>[],
            ),
          )
        : Container();
  }

  @override
  Size get preferredSize => Size.fromHeight(toolbarHeight ?? 64.0);
}
