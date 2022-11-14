import 'package:flutter/material.dart';
import 'package:redux_counter_and_other/api/models/user.dart';

@immutable
class AppState {
  final int counter;
  final ThemeData theme;
  final List<User> users;
  final bool isLoading;

  const AppState(
      {required this.counter,
      required this.theme,
      required this.users,
      required this.isLoading});
}
