// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:grocery_app/core/data/constants.dart' as _i465;
import 'package:grocery_app/core/data/data_source/categories_data_source.dart'
    as _i571;
import 'package:grocery_app/core/data/data_source/products_data_source.dart'
    as _i664;
import 'package:grocery_app/core/data/data_source/settings_data_source.dart'
    as _i501;
import 'package:grocery_app/core/data/data_source/user_data_source.dart'
    as _i557;
import 'package:grocery_app/core/data/repository/categories_repository.dart'
    as _i383;
import 'package:grocery_app/core/data/repository/favorites_repository.dart'
    as _i311;
import 'package:grocery_app/core/data/repository/products_repository.dart'
    as _i888;
import 'package:grocery_app/core/data/repository/settings_repository.dart'
    as _i806;
import 'package:grocery_app/core/data/repository/user_repository.dart' as _i792;
import 'package:grocery_app/core/data/service/cart_service.dart' as _i179;
import 'package:grocery_app/core/data/service/log_service.dart' as _i524;
import 'package:grocery_app/core/di/module/app_module.dart' as _i312;
import 'package:grocery_app/core/domain/interactor/cart_interactor.dart'
    as _i585;
import 'package:grocery_app/core/domain/interactor/categories_interactor.dart'
    as _i986;
import 'package:grocery_app/core/domain/interactor/favorites_interactor.dart'
    as _i813;
import 'package:grocery_app/core/domain/interactor/products_interactor.dart'
    as _i607;
import 'package:grocery_app/core/domain/interactor/user_interactor.dart'
    as _i159;
import 'package:grocery_app/core/domain/use_case/get_dark_mode_settings_use_case.dart'
    as _i407;
import 'package:grocery_app/core/domain/use_case/get_system_theme_settings_use_case.dart'
    as _i743;
import 'package:grocery_app/core/domain/use_case/set_dark_mode_settings_use_case.dart'
    as _i161;
import 'package:grocery_app/core/domain/use_case/set_system_theme_settings_use_case.dart'
    as _i486;
import 'package:grocery_app/core/theme/domain/theme_bloc.dart' as _i69;
import 'package:grocery_app/features/cart/presentation/bloc/cart_bloc.dart'
    as _i257;
import 'package:grocery_app/features/catalog/presentation/bloc/catalog_bloc.dart'
    as _i666;
import 'package:grocery_app/features/favorites/presentation/bloc/favorites_bloc.dart'
    as _i573;
import 'package:grocery_app/features/main/bloc/main_bloc.dart' as _i477;
import 'package:grocery_app/features/profile/bloc/profile_bloc.dart' as _i982;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => appModule.providePrefs,
      preResolve: true,
    );
    gh.lazySingleton<_i571.CategoriesDataSource>(
        () => _i571.CategoriesDataSource());
    gh.lazySingleton<_i664.ProductsDataSource>(
        () => _i664.ProductsDataSource());
    gh.lazySingleton<_i524.LogService>(() => _i524.LogService());
    gh.lazySingleton<_i179.CartService>(() => _i179.CartService());
    gh.lazySingleton<_i465.Constants>(() => _i465.Constants());
    gh.lazySingleton<_i501.SettingsDataSource>(
        () => _i501.SettingsDataSource(gh<_i460.SharedPreferences>()));
    gh.factory<_i888.ProductsRepository>(
        () => _i888.ProductsRepository(gh<_i664.ProductsDataSource>()));
    gh.lazySingleton<_i311.FavoritesRepository>(
        () => _i311.FavoritesRepository(gh<_i664.ProductsDataSource>()));
    gh.lazySingleton<_i806.SettingsRepository>(
        () => _i806.SettingsRepository(gh<_i501.SettingsDataSource>()));
    gh.factory<_i557.UserDataSource>(
        () => _i557.UserDataSource(gh<_i501.SettingsDataSource>()));
    gh.factory<_i792.UserRepository>(() => _i792.UserRepository(
          gh<_i557.UserDataSource>(),
          gh<_i524.LogService>(),
        ));
    gh.factory<_i383.CategoriesRepository>(
        () => _i383.CategoriesRepository(gh<_i571.CategoriesDataSource>()));
    gh.factory<_i607.ProductsInteractor>(
        () => _i607.ProductsInteractor(gh<_i888.ProductsRepository>()));
    gh.factory<_i585.CartInteractor>(() => _i585.CartInteractor(
          gh<_i179.CartService>(),
          gh<_i888.ProductsRepository>(),
        ));
    gh.factory<_i813.FavoritesInteractor>(
        () => _i813.FavoritesInteractor(gh<_i311.FavoritesRepository>()));
    gh.factory<_i407.GetDarkModeSettingsUseCase>(
        () => _i407.GetDarkModeSettingsUseCase(gh<_i806.SettingsRepository>()));
    gh.factory<_i743.GetSystemThemeSettingsUseCase>(() =>
        _i743.GetSystemThemeSettingsUseCase(gh<_i806.SettingsRepository>()));
    gh.factory<_i161.SetDarkModeSettingsUseCase>(
        () => _i161.SetDarkModeSettingsUseCase(gh<_i806.SettingsRepository>()));
    gh.factory<_i486.SetSystemThemeSettingsUseCase>(() =>
        _i486.SetSystemThemeSettingsUseCase(gh<_i806.SettingsRepository>()));
    gh.lazySingleton<_i477.MainBloc>(() => _i477.MainBloc(
          gh<_i813.FavoritesInteractor>(),
          gh<_i585.CartInteractor>(),
        ));
    gh.lazySingleton<_i159.UserInteractor>(
        () => _i159.UserInteractor(gh<_i792.UserRepository>()));
    gh.factory<_i257.CartBloc>(() => _i257.CartBloc(
          gh<_i585.CartInteractor>(),
          gh<_i813.FavoritesInteractor>(),
          gh<_i465.Constants>(),
          gh<_i524.LogService>(),
          gh<_i607.ProductsInteractor>(),
        ));
    gh.factory<_i986.CategoriesInteractor>(
        () => _i986.CategoriesInteractor(gh<_i383.CategoriesRepository>()));
    gh.lazySingleton<_i69.ThemeBloc>(() => _i69.ThemeBloc(
          gh<_i743.GetSystemThemeSettingsUseCase>(),
          gh<_i407.GetDarkModeSettingsUseCase>(),
          gh<_i486.SetSystemThemeSettingsUseCase>(),
          gh<_i161.SetDarkModeSettingsUseCase>(),
        ));
    gh.factory<_i982.ProfileBloc>(
        () => _i982.ProfileBloc(gh<_i159.UserInteractor>()));
    gh.factory<_i573.FavoritesBloc>(() => _i573.FavoritesBloc(
          gh<_i813.FavoritesInteractor>(),
          gh<_i524.LogService>(),
          gh<_i585.CartInteractor>(),
          gh<_i465.Constants>(),
        ));
    gh.factory<_i666.CatalogBloc>(() => _i666.CatalogBloc(
          gh<_i986.CategoriesInteractor>(),
          gh<_i524.LogService>(),
          gh<_i607.ProductsInteractor>(),
          gh<_i585.CartInteractor>(),
          gh<_i813.FavoritesInteractor>(),
          gh<_i465.Constants>(),
        ));
    return this;
  }
}

class _$AppModule extends _i312.AppModule {}
