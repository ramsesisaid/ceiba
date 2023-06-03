import 'dart:convert';
import 'package:ceiba/connections/models/posts_model.dart';
import 'package:ceiba/constants/ceiba_constants.dart';
import 'package:http/http.dart' as http;

class PostsRequest {
  Future<List<PostModel>> getPosts({int? userId}) async {
    try {
      final url = Uri.parse('${CeibaConstants.postsEndpoint}'
          '${userId != null ? '?userId=$userId' : ''}');
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final List<dynamic> decodedData = jsonDecode(response.body);
        return decodedData.map((post) => PostModel.fromJson(post)).toList();
      } else {
        return [];
      }
    } catch (e) {
      return [];
    }
  }
}
