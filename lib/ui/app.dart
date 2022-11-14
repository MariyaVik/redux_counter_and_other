import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_counter_and_other/redux/app_middleware.dart';
import 'package:redux_counter_and_other/redux/app_reducer.dart';
import 'package:redux_counter_and_other/redux/app_state.dart';
import 'package:redux_counter_and_other/theme/theme_light.dart';
import 'package:redux_counter_and_other/ui/navigation.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final store = Store<AppState>(reducer,
      middleware: appMiddleware(),
      initialState: AppState(
          counter: 0, theme: appThemeLight, users: const [], isLoading: true));

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
            initialRoute: Navigation.initialRoute,
            onGenerateRoute: Navigation.onGenerateRoute,
          );
        },
      ),
    );
  }
}
