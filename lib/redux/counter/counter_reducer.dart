import 'package:redux/redux.dart';
import 'package:redux_counter_and_other/redux/counter/counter_actions.dart';

final counterReducer = combineReducers<int>([
  TypedReducer<int, CounterIncreamentAction>(_add),
  TypedReducer<int, CounterDecreamentAction>(_remove),
]);

int _add(int state, CounterIncreamentAction action) {
  return state + 1;
}

int _remove(int state, CounterDecreamentAction action) {
  return state - 1;
}
