// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import '../data_source/settings_data_source.dart';

@lazySingleton
class SettingsRepository {
  final SettingsDataSource _dataSource;

  SettingsRepository(this._dataSource);

  bool getSystemThemeSetting() {
    return _dataSource.getBool(SettingsRepositoryKeys.systemMode) ?? true;
  }

  Future<bool> setSystemThemeSetting(bool isSystem) async {
    return _dataSource.setBool(SettingsRepositoryKeys.systemMode, isSystem);
  }

  bool getDarkModeSetting() {
    return _dataSource.getBool(SettingsRepositoryKeys.darkMode) ?? false;
  }

  Future<bool> setDarkModeSetting(bool isDark) async {
    return _dataSource.setBool(SettingsRepositoryKeys.darkMode, isDark);
  }
}
