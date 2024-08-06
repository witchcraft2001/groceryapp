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
import 'package:grocery_app/features/main/bloc/main_bloc.dart';
import 'package:grocery_app/injection.dart';
import '../../generated/l10n.dart';

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
                Placeholder(),
                Placeholder(),
                Placeholder(),
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
    return count == 0
        ? SvgPicture.asset(asset)
        : Stack(
            children: <Widget>[
              SvgPicture.asset(asset),
              Positioned(
                right: 0,
                child: Container(
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
                      '$count',
                      style: TextStyle(
                        color: context.appTheme?.colors.whiteOnColor,
                        fontSize: 8,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              )
            ],
          );
  }
}
