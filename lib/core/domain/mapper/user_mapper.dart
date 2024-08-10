// Project imports:
import '../../data/model/user_data.dart';
import '../entity/user.dart';

extension UserDataMapper on UserData {
  User toDomain() => User(
        id: id,
        firstName: firstName,
        lastName: lastName,
        email: email,
        phone: phone,
        avatar: avatar,
      );
}

extension UserMapper on User {
  UserData toModel() => UserData(
        id: id,
        firstName: firstName,
        lastName: lastName,
        email: email,
        phone: phone,
        avatar: avatar,
      );
}
