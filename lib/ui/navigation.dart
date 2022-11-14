import 'package:redux_counter_and_other/ui/users_screen.dart';
import 'package:flutter/material.dart';

import 'home.dart';

abstract class NavRouteName {
  static const home = '/';
  static const users = '/users';
}

class Navigation {
  static const initialRoute = NavRouteName.home;

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case NavRouteName.home:
        return MaterialPageRoute(
            builder: (context) => const MyHomePage(title: 'Redux'));
      case NavRouteName.users:
        return MaterialPageRoute(builder: (context) => const UsersScreen());

      default:
        return MaterialPageRoute(
            builder: (context) => const Text('Navigation error!!!'));
    }
  }
}
