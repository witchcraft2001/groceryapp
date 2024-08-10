// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_view_state.freezed.dart';

@freezed
class ProfileViewState with _$ProfileViewState {
  const factory ProfileViewState({
    @Default(null) String? avatar,
    required String firstName,
  }) = _ProfileViewState;
}
