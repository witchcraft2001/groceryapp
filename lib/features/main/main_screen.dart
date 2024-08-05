// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import 'package:grocery_app/core/theme/data/theme_provider.dart';
import 'package:grocery_app/core/ui/common/app_assets.dart';
import 'package:grocery_app/features/catalog/presentation/widgets/catalog_screen.dart';
import '../../generated/l10n.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
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
            icon: SvgPicture.asset(AppAssets.iconCart),
            activeIcon: SvgPicture.asset(AppAssets.iconCartSelected),
            label: S.current.cart,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppAssets.iconFavorites),
            activeIcon: SvgPicture.asset(AppAssets.iconFavoritesSelected),
            label: S.current.favorites,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppAssets.iconProfile),
            activeIcon: SvgPicture.asset(AppAssets.iconProfileSelected),
            label: S.current.profile,
          ),

        ],
        backgroundColor: Colors.white,
        currentIndex: _index,
        type: BottomNavigationBarType.fixed,
        // fixedColor: AppColors.primary,
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
        unselectedLabelStyle:
            Theme.of(context).textTheme.titleSmall?.copyWith(color: context.appTheme?.colors.textMain, fontSize: 11.0),
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
      ),
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: IndexedStack(
        index: _index,
        children: const [
          Placeholder(),
          CatalogScreen(),
          Placeholder(),
          Placeholder(),
          Placeholder(),
        ],
      ),
    );
  }
}
