// Package imports:
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:grocery_app/core/theme/domain/theme_view_state.dart';
import '../../domain/use_case/get_dark_mode_settings_use_case.dart';
import '../../domain/use_case/get_system_theme_settings_use_case.dart';
import '../../domain/use_case/set_dark_mode_settings_use_case.dart';
import '../../domain/use_case/set_system_theme_settings_use_case.dart';

part 'theme_bloc.freezed.dart';

part 'theme_event.dart';

part 'theme_state.dart';

@lazySingleton
class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  final GetSystemThemeSettingsUseCase _getSystemThemeSettingsUseCase;
  final GetDarkModeSettingsUseCase _getDarkModeSettingsUseCase;
  final SetSystemThemeSettingsUseCase _setSystemThemeSettingsUseCase;
  final SetDarkModeSettingsUseCase _setDarkModeSettingsUseCase;

  ThemeBloc(
    this._getSystemThemeSettingsUseCase,
    this._getDarkModeSettingsUseCase,
    this._setSystemThemeSettingsUseCase,
    this._setDarkModeSettingsUseCase,
  ) : super(const ThemeState.init()) {
    on<_Started>((event, emit) async {
      final isSystem = _getSystemThemeSettingsUseCase.run();
      final isDark = _getDarkModeSettingsUseCase.run();
      await updateState(
        isDark: isDark,
        isSystem: isSystem,
        emit: emit,
      );
    });
    on<_SetSystemTheme>((event, emit) async {
      await _setSystemThemeSettingsUseCase.run(event.isSystem);
      await updateState(
        isSystem: event.isSystem,
        emit: emit,
      );
    });
    on<_SetUserSpecifiedTheme>((event, emit) async {
      await _setDarkModeSettingsUseCase.run(event.isDark);
      await updateState(
        isDark: event.isDark,
        emit: emit,
      );
    });
  }

  Future<void> updateState(
      {bool? isSystem, bool? isDark, required Emitter<ThemeState> emit}) async {
    final oldState = _getState();
    final newState = oldState.copyWith(
      isSystem: isSystem ?? oldState.isSystem,
      isDark: isDark ?? oldState.isDark,
    );
    emit(Ready(newState));
  }

  ThemeViewState _getState() {
    return (state is Ready) ? (state as Ready).data : const ThemeViewState();
  }
}
