// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:grocery_app/core/theme/data/theme_provider.dart';

class AppButton extends StatelessWidget {
  final String? title;
  final bool enabled;
  final VoidCallback? onPressed;
  final Style style;
  final ButtonType type;
  final Size size;
  final bool fillMaxWidth;
  final Widget? leading;
  final Widget? tiled;
  final EdgeInsets? padding;

  const AppButton({
    super.key,
    this.title,
    this.enabled = true,
    this.onPressed,
    this.style = Style.base,
    this.type = ButtonType.primary,
    this.size = Size.normal,
    this.leading,
    this.tiled,
    this.fillMaxWidth = true,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    final button = TextButton(
      style: ButtonStyle(
        padding: WidgetStateProperty.all<EdgeInsets>(EdgeInsets.all(_getEdgeSize())),
        backgroundColor: WidgetStateProperty.all<Color>(_getBackgroundColor(context)),
        foregroundColor: WidgetStateProperty.all<Color>(_getForegroundColor(context)),
        overlayColor: WidgetStateProperty.all<Color>(_getOverlayColor(context)),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(_getRadius()),
          side: BorderSide(color: _getBorderColor(context)),
        )),
      ),
      onPressed: _getCallback(),
      child: _getChild(context),
    );

    return padding != null
        ? Padding(
            padding: padding!,
            child: button,
          )
        : button;
  }

  Color _getOverlayColor(BuildContext context) {
    if (enabled) {
      switch (style) {
        case Style.base:
        case Style.semiround:
          return Colors.white12;
        case Style.outline:
        case Style.outlineSemiround:
        case Style.none:
          return context.appTheme!.colors.primary;
      }
    }

    return Colors.transparent;
  }

  VoidCallback? _getCallback() {
    if (enabled) {
      return onPressed;
    }

    return null;
  }

  TextStyle _getTextStyle(BuildContext context) {
    TextStyle textStyle;
    switch (size) {
      case Size.small:
        textStyle = _getTextStyleSmall(context);
        break;
      case Size.normal:
        textStyle = _getTextStyleNormal(context);
        break;
      case Size.large:
        textStyle = _getTextStyleLarge(context);
        break;
    }

    return textStyle;
  }

  TextStyle _getTextStyleSmall(BuildContext context) {
    TextStyle textStyle;
    switch (style) {
      case Style.base:
        textStyle =
            context.appTheme!.text.w400s12cOptional.copyWith(color: _getForegroundColor(context));
        break;
      case Style.semiround:
        textStyle =
            context.appTheme!.text.w400s11cSignatures.copyWith(color: _getForegroundColor(context));
        break;
      case Style.outline:
        textStyle =
            context.appTheme!.text.w400s12cOptional.copyWith(color: _getForegroundColor(context));
        break;
      case Style.outlineSemiround:
        textStyle =
            context.appTheme!.text.w400s11cSignatures.copyWith(color: _getForegroundColor(context));
        break;
      case Style.none:
        textStyle =
            context.appTheme!.text.w400s11cSignatures.copyWith(color: _getForegroundColor(context));
        break;
    }

    return textStyle;
  }

  TextStyle _getTextStyleNormal(BuildContext context) {
    return context.appTheme!.text.w600s16cMain.copyWith(color: _getForegroundColor(context));
  }

  TextStyle _getTextStyleLarge(BuildContext context) {
    return context.appTheme!.text.w600s16cMain.copyWith(color: _getForegroundColor(context));
  }

  double _getEdgeSize() {
    double edge;
    switch (size) {
      case Size.small:
        edge = 5;
        break;
      case Size.normal:
        edge = 15;
        break;
      case Size.large:
        edge = 20;
        break;
    }

    return edge;
  }

  double _getRadius() {
    return style == Style.semiround || style == Style.outlineSemiround || style == Style.none
        ? 18.0
        : 6.0;
  }

  Color _getForegroundColor(BuildContext context) {
    if (!enabled) {
      return (style == Style.outline || style == Style.outlineSemiround)
          ? context.appTheme!.colors.textOptional
          : context.appTheme!.colors.whiteOnColor;
    }
    Color color;
    if (style == Style.outline || style == Style.outlineSemiround) {
      switch (type) {
        case ButtonType.primary:
          color = context.appTheme!.colors.primary;
          break;
        case ButtonType.secondary:
          color = context.appTheme!.colors.specialColorBackgroundForButton;
          break;
        case ButtonType.danger:
          color = context.appTheme!.colors.danger;
          break;
        case ButtonType.info:
          color = context.appTheme!.colors.accent;
          break;
        case ButtonType.warning:
          color = context.appTheme!.colors.warning;
          break;
        case ButtonType.success:
          color = context.appTheme!.colors.success;
          break;
      }

      return color;
    } else {
      color = type == ButtonType.secondary
          ? context.appTheme!.colors.textContrast
          : context.appTheme!.colors.whiteOnColor;

      return color;
    }
  }

  Color _getBackgroundColor(BuildContext context) {
    if (!enabled) {
      return context.appTheme!.colors.textOptional;
    }
    Color color;
    if (style == Style.outline || style == Style.outlineSemiround || style == Style.none) {
      color = Colors.transparent;
    } else {
      switch (type) {
        case ButtonType.primary:
          color = context.appTheme!.colors.primary;
          break;
        case ButtonType.secondary:
          color = context.appTheme!.colors.divider;
          break;
        case ButtonType.danger:
          color = context.appTheme!.colors.danger;
          break;
        case ButtonType.info:
          color = context.appTheme!.colors.accent;
          break;
        case ButtonType.warning:
          color = context.appTheme!.colors.warning;
          break;
        case ButtonType.success:
          color = context.appTheme!.colors.success;
          break;
      }
    }

    return color;
  }

  Color _getBorderColor(BuildContext context) {
    Color color;
    if (enabled && (style == Style.outline || style == Style.outlineSemiround)) {
      switch (type) {
        case ButtonType.primary:
          color = context.appTheme!.colors.primary;
          break;
        case ButtonType.secondary:
          color = context.appTheme!.colors.brAndIconsShapes;
          break;
        case ButtonType.danger:
          color = context.appTheme!.colors.danger;
          break;
        case ButtonType.info:
          color = context.appTheme!.colors.accent;
          break;
        case ButtonType.warning:
          color = context.appTheme!.colors.warning;
          break;
        case ButtonType.success:
          color = context.appTheme!.colors.success;
          break;
      }
    } else {
      color = Colors.transparent;
    }

    return color;
  }

  Widget _getChild(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        leading != null ? leading! : Container(),
        _getTitleText(context),
        tiled != null ? tiled! : Container(),
      ],
    );
  }

  Widget _getTitleText(BuildContext context) {
    return title != null
        ? Padding(
            padding: EdgeInsets.only(
              left: leading != null ? 12.0 : 0.0,
              right: tiled != null ? 12.0 : 0.0,
            ),
            child: Text(
              title != null ? title! : "",
              style: _getTextStyle(context),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              textAlign: TextAlign.center,
            ),
          )
        : Container();
  }
}

enum Style { base, semiround, outline, outlineSemiround, none }

enum Size { small, normal, large }

enum ButtonType { primary, secondary, danger, info, warning, success }
