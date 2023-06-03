import 'package:ceiba/connections/models/posts_model.dart';
import 'package:ceiba/connections/models/user_model.dart';
import 'package:ceiba/connections/remote/posts_request.dart';
import 'package:ceiba/constants/ceiba_constants.dart';
import 'package:ceiba/theme/app_theme.dart';
import 'package:ceiba/widgets/posts/ceiba_list_posts.dart';
import 'package:flutter/material.dart';

class PostsListScreen extends StatelessWidget {
  PostsListScreen({super.key});
  final PostsRequest _postsRequest = PostsRequest();

  @override
  Widget build(BuildContext context) {
    final Map<Object, Object> data =
        ModalRoute.of(context)!.settings.arguments as Map<Object, Object>;

    final UserModel user = data['user'] as UserModel;

    return Scaffold(
      backgroundColor: AppCeibaTheme.bgColor,
      appBar: AppBar(
        title: Column(
          children: [
            Text(user.name),
            Text(
              user.email,
              style: const TextStyle(fontSize: 12),
            ),
            Text(
              user.phone,
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
      body: FutureBuilder(
          future: _postsRequest.getPosts(userId: user.id),
          builder: ((context, snapshot) {
            if (!snapshot.hasData) {
              return const Center(child: CircularProgressIndicator());
            }

            if (snapshot.data!.isEmpty) {
              return const Center(child: Text(CeibaConstants.emptyPost));
            }

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Expanded(
                    child: CeibaPostsList(
                        postsData: snapshot.data as List<PostModel>),
                  ),
                ],
              ),
            );
          })),
    );
  }
}
