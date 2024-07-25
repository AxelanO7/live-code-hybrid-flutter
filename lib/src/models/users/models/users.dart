import 'package:json_annotation/json_annotation.dart';
import 'address.dart';
import 'company.dart';

part 'users.g.dart';

@JsonSerializable()
class Users {
      Users();

  late int id;
  late String name;
  late String username;
  late String email;
  late Address address;
  late String phone;
  late String website;
  late Company company;

  factory Users.fromJson(Map<String,dynamic> json) => _$UsersFromJson(json);
  Map<String, dynamic> toJson() => _$UsersToJson(this);
}
