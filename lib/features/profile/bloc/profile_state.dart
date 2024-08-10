part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;
  const factory ProfileState.nonAuthorized() = NonAuthorized;
  const factory ProfileState.authorized(ProfileViewState data) = Authorized;
}
