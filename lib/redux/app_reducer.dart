import 'package:redux_counter_and_other/redux/app_state.dart';
import 'package:redux_counter_and_other/redux/counter/counter_reducer.dart';
import 'package:redux_counter_and_other/redux/people/loading_reducer.dart';
import 'package:redux_counter_and_other/redux/people/people_reducer.dart';
import 'package:redux_counter_and_other/redux/theme/theme_reducer.dart';

AppState reducer(AppState state, dynamic action) => AppState(
    counter: counterReducer(state.counter, action),
    theme: themeReducer(state.theme, action),
    users: peopleReducer(state.users, action),
    isLoading: loadingReducer(state.isLoading, action));
