import 'package:redux/redux.dart';
import 'package:redux_counter_and_other/api/models/user.dart';
import 'package:redux_counter_and_other/redux/people/people_actions.dart';

final peopleReducer = combineReducers<List<User>>([
  TypedReducer<List<User>, PeopleSuccessAction>(_success),
  TypedReducer<List<User>, PeopleErrorAction>(_error),
]);

List<User> _success(List<User> state, PeopleSuccessAction action) {
  return action.users;
}

List<User> _error(List<User> state, PeopleErrorAction action) {
  return [];
}
