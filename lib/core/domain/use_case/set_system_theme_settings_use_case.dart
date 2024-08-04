// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:grocery_app/core/data/repository/settings_repository.dart';

@injectable
class SetSystemThemeSettingsUseCase {
  final SettingsRepository _settingsRepository;

  SetSystemThemeSettingsUseCase(this._settingsRepository);

  Future<bool> run(bool isSystem) => _settingsRepository.setSystemThemeSetting(isSystem);
}
