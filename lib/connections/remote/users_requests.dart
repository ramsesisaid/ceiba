import 'dart:convert';
import 'package:ceiba/connections/models/user_model.dart';
import 'package:ceiba/constants/ceiba_constants.dart';
import 'package:http/http.dart' as http;

class UsersRequests {
  Future<List<UserModel>> getUsers() async {
    try {
      final response = await http.get(Uri.parse(CeibaConstants.usersEndpoint));
      if (response.statusCode == 200) {
        final List<dynamic> data = jsonDecode(response.body);
        return data.map((json) => UserModel.fromJson(json)).toList();
      } else {
        return [];
      }
    } catch (e) {
      return [];
    }
  }
}
