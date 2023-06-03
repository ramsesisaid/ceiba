class CeibaConstants {
  //connection
  static const String baseUrl = 'https://jsonplaceholder.typicode.com';
  static const String usersEndpoint = '$baseUrl/users';
  static const String postsEndpoint = '$baseUrl/posts';
  static const String hiveBoxName = 'users';

  //labels
  static const String appBarTitle = 'Ceiba test';
  static const String searchUserLabel = 'Search user';
  static const String openPostsButton = 'OPEN USER POSTS';
  static const String emptyList = 'List is empty';
  static const String emptyPost = 'No posts for this user';

  //routes
  static const String usersListRoute = 'UserListScreen';
  static const String postListRoute = 'PostsListScreen';
}
