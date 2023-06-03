import 'package:ceiba/constants/ceiba_constants.dart';
import 'package:ceiba/providers/users_providers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CeibaSearchTextField extends StatelessWidget {
  const CeibaSearchTextField({
    super.key,
    required TextEditingController searchController,
  }) : _searchController = searchController;

  final TextEditingController _searchController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _searchController,
      decoration: InputDecoration(
        labelText: CeibaConstants.searchUserLabel,
        labelStyle: TextStyle(color: Theme.of(context).primaryColor),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).primaryColor),
        ),
      ),
      onChanged: (value) {
        Provider.of<UsersProvider>(context, listen: false).filterUsers(value);
      },
    );
  }
}
