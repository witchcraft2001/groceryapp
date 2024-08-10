// Dart imports:
import 'dart:convert';
import 'dart:math';

// Package imports:
import 'package:injectable/injectable.dart';

// Project imports:
import 'package:grocery_app/core/data/model/user_data.dart';
import 'settings_data_source.dart';

@injectable
class UserDataSource {
  final SettingsDataSource _settings;

  UserDataSource(this._settings);

  UserData? getUser() {
    final jsonString = _settings.getString(SettingsRepositoryKeys.user);
    if (jsonString != null) {
      return UserData.fromJson(jsonDecode(jsonString));
    } else {
      return null;
    }
  }

  Future<UserData> setUser(UserData user) async {
    UserData userWithId = (user.id != 0)
        ? user
        : UserData(
            id: Random().nextInt(100),
            firstName: user.firstName,
            lastName: user.lastName,
            phone: user.phone,
            email: user.email,
          );
    final json = jsonEncode(userWithId.toJson());
    await _settings.setString(SettingsRepositoryKeys.user, json);
    return userWithId;
  }
}
