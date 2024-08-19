// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import 'package:grocery_app/core/theme/data/theme_provider.dart';
import 'app_assets.dart';
import 'app_decorations.dart';
import 'app_icon_button.dart';

class FavoriteButton extends StatefulWidget {
  final bool isFavorite;
  final Function() onTap;

  const FavoriteButton({super.key, required this.isFavorite, required this.onTap});

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> with TickerProviderStateMixin {
  late AnimationController _scaleController;
  late Animation<double> _scaleAnimation;
  late AnimationController _opacityController;
  late Animation<double> _opacityAnimation;

  double _scaleValue = 1.0;
  double _opacityValue = 0.0;

  @override
  void initState() {
    _scaleController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    _opacityController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 150),
    );

    _scaleAnimation = Tween<double>(begin: 1.0, end: 2.0).animate(_scaleController);
    _scaleController.addListener(() {
      setState(() {
        _scaleValue = _scaleAnimation.value;
      });
    });
    _opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(_opacityController);
    _opacityController.addListener(() {
      setState(() {
        _opacityValue = _opacityAnimation.value;
      });
    });
    _opacityController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _opacityController.reverse();
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Material(
          borderRadius: AppDecoration.brBtnOther,
          color: context.appTheme?.colors.brAndIconsShapes,
          child: AppIconButton(
            onTap: () {
              _scaleController.forward(from: 0.0);
              _opacityController.forward();
              widget.onTap();
            },
            icon: widget.isFavorite ? AppAssets.iconHeartFill : AppAssets.iconHeartLine,
          ),
        ),
        _opacityValue > 0.05
            ? Transform.scale(
                scale: _scaleValue,
                child: Opacity(
                  opacity: _opacityValue,
                  child: SvgPicture.asset(AppAssets.iconHeartLine, colorFilter: ColorFilter.mode(context.appTheme!.colors.primary, BlendMode.srcIn),),
                ),
              )
            : Container(),
      ],
    );
  }

  @override
  void dispose() {
    _scaleController.dispose();
    _opacityController.dispose();
    super.dispose();
  }
}
