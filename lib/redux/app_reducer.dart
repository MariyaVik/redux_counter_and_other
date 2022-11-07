import 'package:redux_counter_and_other/redux/app_state.dart';
import 'package:redux_counter_and_other/redux/counter/counter_reducer.dart';

AppState reducer(AppState state, dynamic action) =>
    AppState(counter: counterReducer(state.counter, action));