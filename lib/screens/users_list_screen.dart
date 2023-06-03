import 'package:ceiba/constants/ceiba_constants.dart';
import 'package:ceiba/providers/users_providers.dart';
import 'package:ceiba/theme/app_theme.dart';
import 'package:ceiba/widgets/users/ceiba_list_users.dart';
import 'package:ceiba/widgets/users/ceiba_search_textfield.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UsersListScreen extends StatefulWidget {
  const UsersListScreen({super.key});

  @override
  UsersListScreenState createState() => UsersListScreenState();
}

class UsersListScreenState extends State<UsersListScreen> {
  final _searchController = TextEditingController();
  @override
  void initState() {
    super.initState();
    Provider.of<UsersProvider>(context, listen: false).getUsers();
  }

  @override
  Widget build(BuildContext context) {
    final usersProvider = Provider.of<UsersProvider>(context);

    return Scaffold(
      backgroundColor: AppCeibaTheme.bgColor,
      appBar: AppBar(
        title: const Text(CeibaConstants.appBarTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            CeibaSearchTextField(searchController: _searchController),
            Expanded(
              child: (usersProvider.isLoading)
                  ? const Center(child: CircularProgressIndicator())
                  : (usersProvider.users.isNotEmpty)
                      ? CeibaUsersList(usersData: usersProvider.users)
                      : const Center(child: Text(CeibaConstants.emptyList)),
            ),
          ],
        ),
      ),
    );
  }
}
