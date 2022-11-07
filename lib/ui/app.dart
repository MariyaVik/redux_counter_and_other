import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_counter_and_other/redux/app_reducer.dart';
import 'package:redux_counter_and_other/redux/app_state.dart';
import 'package:redux_counter_and_other/theme/theme_light.dart';
import 'package:redux_counter_and_other/ui/home.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final store = Store<AppState>(reducer,
      initialState: AppState(counter: 0, theme: appThemeLight));

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: store,
      child: StoreConnector<AppState, ThemeData>(
        converter: (store) => store.state.theme,
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: state,
            home: const MyHomePage(title: 'Flutter Demo Home Page'),
          );
        },
      ),
    );
  }
}
