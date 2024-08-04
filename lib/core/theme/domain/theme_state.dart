part of 'theme_bloc.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState.init() = Init;

  const factory ThemeState.ready(ThemeViewState data) = Ready;
}
