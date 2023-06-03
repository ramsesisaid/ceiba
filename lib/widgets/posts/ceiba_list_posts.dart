import 'package:ceiba/connections/models/posts_model.dart';
import 'package:ceiba/widgets/posts/ceiba_tile_post.dart';
import 'package:flutter/material.dart';

class CeibaPostsList extends StatelessWidget {
  const CeibaPostsList({
    super.key,
    required this.postsData,
  });

  final List<PostModel> postsData;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: postsData.length,
      itemBuilder: (ctx, index) {
        final post = postsData[index];

        return CeibaPostsListTile(post: post);
      },
    );
  }
}
