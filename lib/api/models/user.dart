import 'package:redux_counter_and_other/api/models/address.dart';
import 'package:redux_counter_and_other/api/models/company.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  int id;
  String name;
  String email;
  Addsess address;
  String phone;
  String website;
  Company company;
  User(
      {required this.id,
      required this.name,
      required this.email,
      required this.address,
      required this.phone,
      required this.website,
      required this.company});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
