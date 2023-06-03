import 'package:ceiba/connections/models/address_model.dart';
import 'package:ceiba/connections/models/company_model.dart';
import 'package:hive/hive.dart';

@HiveType(typeId: 0)
class UserModel {
  UserModel({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.address,
    required this.phone,
    required this.website,
    required this.company,
  });

  factory UserModel.fromJson(Map<dynamic, dynamic> json) {
    return UserModel(
      id: json['id'],
      name: json['name'],
      username: json['username'],
      email: json['email'],
      address: AddressModel.fromJson(json['address']),
      phone: json['phone'],
      website: json['website'],
      company: CompanyModel.fromJson(json['company']),
    );
  }

  @HiveField(0)
  final int id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String username;
  @HiveField(3)
  final String email;
  @HiveField(4)
  final AddressModel address;
  @HiveField(5)
  final String phone;
  @HiveField(6)
  final String website;
  @HiveField(7)
  final CompanyModel company;
}






