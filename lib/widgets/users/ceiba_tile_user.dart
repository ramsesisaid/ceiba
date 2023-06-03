import 'package:ceiba/connections/models/user_model.dart';
import 'package:ceiba/constants/ceiba_constants.dart';
import 'package:ceiba/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CeibaUsersListTile extends StatelessWidget {
  const CeibaUsersListTile({
    super.key,
    required this.user,
  });

  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: AppCeibaTheme.tileBgColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: ListTile(
        title: Text(user.name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.phone),
                const SizedBox(width: 5),
                Text(user.phone),
              ],
            ),
            Row(
              children: [
                const Icon(Icons.email),
                const SizedBox(width: 5),
                Text(user.email),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  style: ButtonStyle(
                    splashFactory: NoSplash.splashFactory,
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      const EdgeInsets.all(0),
                    ),
                    animationDuration: Duration.zero,
                  ),
                  onPressed: () async {
                    await Navigator.of(context).pushNamed(
                      CeibaConstants.postListRoute,
                      arguments: {'user': user},
                    );
                  },
                  child: Text(
                    CeibaConstants.openPostsButton,
                    style: AppCeibaTheme.getPostButtonStyle(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
