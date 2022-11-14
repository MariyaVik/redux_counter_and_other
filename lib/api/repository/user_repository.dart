import 'package:redux_counter_and_other/api/models/user.dart';
import 'package:dio/dio.dart';

class UserRepository {
  final Dio dio = Dio();
  Future<List<User>> getAllUsers() async {
    // await Future.delayed(Duration(seconds: 3));
    final response =
        await dio.get('https://jsonplaceholder.typicode.com/users');
    if (response.statusCode == 200) {
      final users = response.data.map<User>((e) => User.fromJson(e)).toList();
      return users;
    } else {
      throw 'Something went wrong ${response.statusCode}';
    }
  }
}
