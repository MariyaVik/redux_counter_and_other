import 'package:redux/redux.dart';
import 'package:redux_counter_and_other/api/repository/user_repository.dart';
import 'package:redux_counter_and_other/redux/app_state.dart';
import 'package:redux_counter_and_other/redux/people/people_actions.dart';
import 'package:redux_counter_and_other/redux/people/people_middlewares.dart';

List<Middleware<AppState>> appMiddleware() {
  final userRepo = UserRepository();
  return [TypedMiddleware<AppState, PeopleLoadingAction>(loadUsers(userRepo))];
}
