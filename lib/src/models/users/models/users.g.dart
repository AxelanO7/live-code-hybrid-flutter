// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Users _$UsersFromJson(Map<String, dynamic> json) => Users()
  ..id = (json['id'] as num).toInt()
  ..name = json['name'] as String
  ..username = json['username'] as String
  ..email = json['email'] as String
  ..address = Address.fromJson(json['address'] as Map<String, dynamic>)
  ..phone = json['phone'] as String
  ..website = json['website'] as String
  ..company = Company.fromJson(json['company'] as Map<String, dynamic>);

Map<String, dynamic> _$UsersToJson(Users instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'email': instance.email,
      'address': instance.address,
      'phone': instance.phone,
      'website': instance.website,
      'company': instance.company,
    };
