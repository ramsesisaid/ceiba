import 'package:ceiba/connections/models/user_model.dart';
import 'package:ceiba/widgets/users/ceiba_tile_user.dart';
import 'package:flutter/material.dart';

class CeibaUsersList extends StatelessWidget {
  const CeibaUsersList({
    super.key,
    required this.usersData,
  });

  final List<UserModel> usersData;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: usersData.length,
      itemBuilder: (ctx, index) {
        final user = usersData[index];

        return CeibaUsersListTile(user: user);
      },
    );
  }
}

