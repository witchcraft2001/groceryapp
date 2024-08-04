// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:grocery_app/core/data/repository/settings_repository.dart';

@injectable
class GetSystemThemeSettingsUseCase {
  final SettingsRepository _settingsRepository;

  GetSystemThemeSettingsUseCase(this._settingsRepository);

  bool run() => _settingsRepository.getSystemThemeSetting();
}
