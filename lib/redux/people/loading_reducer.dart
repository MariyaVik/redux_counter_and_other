import 'package:redux/redux.dart';
import 'package:redux_counter_and_other/redux/people/people_actions.dart';

final loadingReducer = combineReducers<bool>([
  TypedReducer<bool, PeopleSuccessAction>(_setLoaded),
  TypedReducer<bool, PeopleErrorAction>(_setLoaded),
]);

bool _setLoaded(bool state, action) {
  return false;
}
