// Package imports:
import 'package:injectable/injectable.dart';
import 'package:rxdart/subjects.dart';

// Project imports:
import 'package:grocery_app/core/data/data_source/user_data_source.dart';
import 'package:grocery_app/core/domain/mapper/user_mapper.dart';
import '../../domain/entity/user.dart';
import '../service/log_service.dart';

@injectable
class UserRepository {
  final UserDataSource _dataSource;
  final LogService _logService;
  final BehaviorSubject<User?> _userSubject = BehaviorSubject();
  Subject<User?> get userSubject => _userSubject;

  UserRepository(this._dataSource, this._logService) {
    final user = get();
    _userSubject.add(user);
  }

  User? get() {
    try {
      return _dataSource.getUser()?.toDomain();
    } catch (e, stack) {
      _logService.recordError(e, stack);
      return null;
    }
  }

  Future<User?> set(User user) async{
    try {
      final newUser = (await _dataSource.setUser(user.toModel())).toDomain();
      _userSubject.add(newUser);
      return newUser;
    } catch (e, stack) {
      _logService.recordError(e, stack);
      return null;
    }
  }
}
