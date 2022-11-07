import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:redux_counter_and_other/redux/theme/theme_actions.dart';
import 'package:redux_counter_and_other/theme/theme_dark.dart';
import 'package:redux_counter_and_other/theme/theme_light.dart';

final themeReducer = combineReducers<ThemeData>([
  TypedReducer<ThemeData, ChangeThemeAction>(_changeTheme),
]);
ThemeData _changeTheme(ThemeData state, ChangeThemeAction action) =>
    state.brightness == Brightness.dark ? appThemeLight : appThemeDark;
