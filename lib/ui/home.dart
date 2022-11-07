import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_counter_and_other/redux/app_state.dart';
import 'package:redux_counter_and_other/redux/counter/counter_actions.dart';
import 'package:redux_counter_and_other/redux/theme/theme_actions.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          StoreConnector<AppState, Store<AppState>>(
              converter: (store) => store,
              builder: (context, store) {
                return IconButton(
                    onPressed: () => store.dispatch(ChangeThemeAction()),
                    icon: Icon(store.state.theme.brightness == Brightness.light
                        ? Icons.sunny
                        : Icons.nightlight_round));
              }),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            StoreConnector<AppState, int>(
              converter: (store) => store.state.counter,
              builder: (context, counter) => Text(
                counter.toString(),
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => StoreProvider.of<AppState>(context)
                .dispatch(CounterIncreamentAction()),
            child: const Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () => StoreProvider.of<AppState>(context)
                .dispatch(CounterDecreamentAction()),
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
