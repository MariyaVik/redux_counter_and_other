import 'package:flutter/material.dart';

@immutable
class AppState {
  final int counter;
  final ThemeData theme;

  const AppState({required this.counter, required this.theme});
}
