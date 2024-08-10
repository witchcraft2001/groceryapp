// Package imports:
import 'package:injectable/injectable.dart';
import 'package:rxdart/subjects.dart';

// Project imports:
import 'package:grocery_app/core/data/repository/user_repository.dart';
import '../entity/user.dart';

@lazySingleton
class UserInteractor {
  final UserRepository _repository;

  UserInteractor(this._repository);

  Subject<User?> getUserSubject() => _repository.userSubject;

  User? get() => _repository.get();

  Future<User?> set(User user) => _repository.set(user);
}
