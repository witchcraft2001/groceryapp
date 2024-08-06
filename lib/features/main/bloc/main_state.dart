part of 'main_bloc.dart';

@freezed
class MainState with _$MainState {
  const factory MainState.ready(
    int currentPage,
    int cartPositionCount,
    int favoritesCount,
  ) = Ready;
}
