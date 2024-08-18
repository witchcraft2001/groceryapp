// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:grocery_app/features/auth/authorize/authorize_screen.dart';
import 'package:grocery_app/features/auth/login/widgets/login_screen.dart';
import '../../features/auth/register/widgets/register_screen.dart';

class AppRoutes {
  AppRoutes._();

  static const authorize = '/auth/authorize';
  static const login = '/auth/login';
  static const register = '/auth/register';

  static Map<String, WidgetBuilder> routes = {
    AppRoutes.authorize: (_) => const AuthorizeScreen(),
    AppRoutes.login: (_) => const LoginScreen(),
    AppRoutes.register: (_) => const RegisterScreen(),
  };

  static Future<Object?> pushAuthorize(BuildContext context) async {
    return await Navigator.of(context).pushNamed(authorize);
  }

  static Future<Object?> pushLogin(BuildContext context) async {
    return await Navigator.of(context).pushNamed(login);
  }

  static Future<Object?> pushRegister(BuildContext context) async {
    return await Navigator.of(context).pushNamed(register);
  }
}
