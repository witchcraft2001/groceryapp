// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:grocery_app/core/data/repository/settings_repository.dart';

@injectable
class GetDarkModeSettingsUseCase {
  final SettingsRepository _settingsRepository;

  GetDarkModeSettingsUseCase(this._settingsRepository);

  bool run() => _settingsRepository.getDarkModeSetting();
}
