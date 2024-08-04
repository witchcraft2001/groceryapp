// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_view_state.freezed.dart';

@freezed
class ThemeViewState with _$ThemeViewState {
  const factory ThemeViewState({
    @Default(false) bool isSystem,
    @Default(false) bool isDark,
  }) = _ThemeViewState;
}
