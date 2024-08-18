// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import 'package:grocery_app/core/extensions/context_extensions.dart';
import 'package:grocery_app/core/theme/data/theme_provider.dart';
import 'package:grocery_app/core/ui/common/app_assets.dart';
import 'package:grocery_app/core/ui/common/app_decorations.dart';
import 'package:grocery_app/features/catalog/presentation/widgets/catalog_screen.dart';
import 'package:grocery_app/features/favorites/presentation/widgets/favorites_screen.dart';
import 'package:grocery_app/features/main/bloc/main_bloc.dart';
import 'package:grocery_app/features/profile/widgets/profile_screen.dart';
import 'package:grocery_app/injection.dart';

import '../../generated/l10n.dart';
import '../cart/presentation/widgets/cart_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<MainBloc>()..add(const MainEvent.started()),
      child: BlocBuilder<MainBloc, MainState>(
        builder: (context, state) {
          return Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(AppAssets.iconHome),
                  activeIcon: SvgPicture.asset(AppAssets.iconHomeSelected),
                  label: S.current.main,
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(AppAssets.iconCatalog),
                  activeIcon: SvgPicture.asset(AppAssets.iconCatalogSelected),
                  label: S.current.catalog,
                ),
                BottomNavigationBarItem(
                  icon: _NavigationBarItemIconWithBadge(
                    asset: AppAssets.iconCart,
                    count: state.cartPositionCount,
                  ),
                  activeIcon: _NavigationBarItemIconWithBadge(
                    asset: AppAssets.iconCartSelected,
                    count: state.cartPositionCount,
                  ),
                  label: S.current.cart,
                ),
                BottomNavigationBarItem(
                  icon: _NavigationBarItemIconWithBadge(
                    asset: AppAssets.iconFavorites,
                    count: state.favoritesCount,
                  ),
                  activeIcon: _NavigationBarItemIconWithBadge(
                    asset: AppAssets.iconFavoritesSelected,
                    count: state.favoritesCount,
                  ),
                  label: S.current.favorites,
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(AppAssets.iconProfile),
                  activeIcon: SvgPicture.asset(AppAssets.iconProfileSelected),
                  label: S.current.profile,
                ),
              ],
              backgroundColor: Colors.white,
              currentIndex: state.currentPage,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: context.appTheme?.colors.primary,
              unselectedItemColor: context.appTheme?.colors.textMain,
              selectedFontSize: 11.0,
              unselectedFontSize: 11.0,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              selectedIconTheme:
                  const IconThemeData.fallback().copyWith(color: context.appTheme?.colors.primary),
              unselectedIconTheme:
                  const IconThemeData.fallback().copyWith(color: context.appTheme?.colors.textMain),
              selectedLabelStyle: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(color: context.appTheme?.colors.primary, fontSize: 11.0),
              unselectedLabelStyle: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(color: context.appTheme?.colors.textMain, fontSize: 11.0),
              onTap: (index) => context.bloc<MainBloc>().add(MainEvent.onPageChanged(index)),
            ),
            appBar: AppBar(
              toolbarHeight: 0,
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            body: IndexedStack(
              index: state.currentPage,
              children: const [
                Placeholder(),
                CatalogScreen(),
                CartScreen(),
                FavoritesScreen(),
                ProfileScreen(),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _NavigationBarItemIconWithBadge extends StatelessWidget {
  final String asset;
  final int count;

  const _NavigationBarItemIconWithBadge({required this.asset, required this.count});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SvgPicture.asset(asset),
        Positioned(
          right: 0,
          child: _AnimatedBadge(
            count: count,
          ),
        )
      ],
    );
  }
}

class _AnimatedBadge extends StatefulWidget {
  final int count;

  const _AnimatedBadge({super.key, required this.count});

  @override
  State<_AnimatedBadge> createState() => _AnimatedBadgeState();
}

class _AnimatedBadgeState extends State<_AnimatedBadge> with TickerProviderStateMixin {
  late AnimationController _scaleController;
  late Animation<double> _scaleAnimation;

  double scaleValue = 1.0;

  @override
  void initState() {
    _scaleController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );

    _scaleAnimation = Tween<double>(begin: 1.0, end: 1.5).animate(_scaleController);
    _scaleController.addListener(() {
      setState(() {
        scaleValue = _scaleAnimation.value;
      });
    });
    _scaleController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _scaleController.reverse();
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: scaleValue,
      child: widget.count > 0
          ? Container(
              padding: const EdgeInsets.all(1),
              decoration: BoxDecoration(
                color: context.appTheme?.colors.primary,
                borderRadius: AppDecoration.brBtnSmall,
              ),
              constraints: const BoxConstraints(
                minWidth: 11,
                minHeight: 11,
              ),
              child: Center(
                child: Text(
                  '${widget.count}',
                  style: TextStyle(
                    color: context.appTheme?.colors.whiteOnColor,
                    fontSize: 8,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          : Container(),
    );
  }

  @override
  void didUpdateWidget(covariant _AnimatedBadge oldWidget) {
    if (oldWidget.count != widget.count) {
      if (_scaleController.isAnimating) {
        _scaleController.stop();
      }
      _scaleController.forward();
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _scaleController.dispose();
    super.dispose();
  }
}
