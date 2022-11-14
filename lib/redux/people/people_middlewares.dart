import 'package:redux/redux.dart';
import 'package:redux_counter_and_other/api/repository/user_repository.dart';
import 'package:redux_counter_and_other/redux/app_state.dart';
import 'package:redux_counter_and_other/redux/people/people_actions.dart';

Middleware<AppState> loadUsers(UserRepository repository) {
  return (Store<AppState> store, action, NextDispatcher next) {
    repository
        .getAllUsers()
        .then((users) => store.dispatch(
              PeopleSuccessAction(
                users: users,
              ),
            ))
        .catchError((_) => store.dispatch(PeopleErrorAction()));

    next(action);
  };
}
