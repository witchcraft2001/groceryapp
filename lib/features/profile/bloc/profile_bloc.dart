// Dart imports:
import 'dart:async';

// Package imports:
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

// Project imports:
import '../../../core/domain/entity/user.dart';
import '../../../core/domain/interactor/user_interactor.dart';
import 'profile_view_state.dart';

part 'profile_bloc.freezed.dart';

part 'profile_event.dart';

part 'profile_state.dart';

@injectable
class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final UserInteractor _userInteractor;
  late StreamSubscription<User?> _userSubscription;

  ProfileBloc(this._userInteractor) : super(const ProfileState.initial()) {
    _userSubscription = _userInteractor.getUserSubject().listen((user) {
      add(ProfileEvent.onUserChanged(user));
    });
    on<_Started>((event, emit) => _init(emit));
    on<_OnUserChanged>((event, emit) => _updateUser(event.user, emit));
  }

  void _init(Emitter<ProfileState> emit) {
    final user = _userInteractor.get();
    _updateUser(user, emit);
  }

  void _updateUser(User? user, Emitter<ProfileState> emit) {
    if (user == null) {
      emit(const ProfileState.nonAuthorized());
    } else {
      emit(ProfileState.authorized(_getViewStateFromUser(user)));
    }
  }

  ProfileViewState _getViewStateFromUser(User user) {
    return ProfileViewState(
      firstName: user.firstName,
      avatar: user.avatar,
    );
  }

  @override
  Future<void> close() async {
    super.close();
    _userSubscription.cancel();
  }
}
