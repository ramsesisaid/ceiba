import 'package:ceiba/connections/local/users_box.dart';
import 'package:ceiba/connections/models/user_model.dart';
import 'package:ceiba/connections/remote/users_requests.dart';
import 'package:flutter/material.dart';

class UsersProvider extends ChangeNotifier {
  final UsersBox _usersBox = UsersBox();
  final UsersRequests _usersRequests = UsersRequests();

  List<UserModel> _users = [];
  List<UserModel> get users => _users;

  bool _isLoading = true;
  bool get isLoading => _isLoading;

  Future<void> getUsers() async {
    _users = await _usersBox.getUsers();
    if (_users.isEmpty) {
      _users = await _usersRequests.getUsers();
      _usersBox.saveUsers(_users);
    }
    _isLoading = false;
    notifyListeners();
  }

  void filterUsers(String value) {
    _usersBox.getUsers().then((users) {
      _users = (value.isEmpty)
          ? users
          : users
              .where((user) =>
                  user.name.toLowerCase().startsWith(value.toLowerCase()))
              .toList();

      notifyListeners();
    });
  }
}
