part of 'main_bloc.dart';

@freezed
class MainEvent with _$MainEvent {
  const factory MainEvent.started() = _Started;
  const factory MainEvent.onPageChanged(int index) = _OnPageChanged;
  const factory MainEvent.onFavoritesCountChanged(int count) = _OnFavoritesCountChanged;
  const factory MainEvent.onCartPositionsCountChanged(int count) = _OnCartPositionsCountChanged;
}
