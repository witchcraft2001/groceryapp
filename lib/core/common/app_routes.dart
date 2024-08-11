import 'package:flutter/material.dart';
import 'package:grocery_app/features/auth/authorize/authorize_screen.dart';

class AppRoutes {
  AppRoutes._();

  static const authorize = '/auth/authorize';

  static Map<String, WidgetBuilder> routes = {
    AppRoutes.authorize: (_) => const AuthorizeScreen(),
  };

  static Future<Object?> pushAuthorize(BuildContext context) async {
    return await Navigator.of(context).pushNamed(authorize);
  }
}
