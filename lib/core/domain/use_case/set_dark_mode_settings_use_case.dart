// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:grocery_app/core/data/repository/settings_repository.dart';

@injectable
class SetDarkModeSettingsUseCase {
  final SettingsRepository _settingsRepository;

  SetDarkModeSettingsUseCase(this._settingsRepository);

  Future<bool> run(bool isDark) => _settingsRepository.setDarkModeSetting(isDark);
}
