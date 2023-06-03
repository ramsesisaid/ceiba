import 'package:ceiba/connections/models/posts_model.dart';
import 'package:ceiba/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CeibaPostsListTile extends StatelessWidget {
  const CeibaPostsListTile({
    super.key,
    required this.post,
  });

  final PostModel post;

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
        title: Text(post.title),
        subtitle: Text(post.body),
      ),
    );
  }
}
