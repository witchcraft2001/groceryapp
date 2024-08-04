part of 'theme_bloc.dart';

@freezed
class ThemeEvent with _$ThemeEvent {
  const factory ThemeEvent.started() = _Started;
  const factory ThemeEvent.setSystemTheme(bool isSystem) = _SetSystemTheme;
  const factory ThemeEvent.setUserSpecifiedTheme(bool isDark) = _SetUserSpecifiedTheme;
}
