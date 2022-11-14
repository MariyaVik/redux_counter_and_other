import 'package:redux_counter_and_other/api/models/user.dart';

class PeopleLoadingAction {}

class PeopleSuccessAction {
  List<User> users;
  PeopleSuccessAction({required this.users});
}

class PeopleErrorAction {}
