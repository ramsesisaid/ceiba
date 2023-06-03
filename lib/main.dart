import 'package:ceiba/constants/ceiba_constants.dart';
import 'package:ceiba/providers/users_providers.dart';
import 'package:ceiba/screens/posts_list_screen.dart';
import 'package:ceiba/screens/users_list_screen.dart';
import 'package:ceiba/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider.value(value: UsersProvider()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('en', 'US')],
      debugShowCheckedModeBanner: false,
      title: 'Ceiba test',
      theme: AppCeibaTheme.getTheme(),
      initialRoute: CeibaConstants.usersListRoute,
      routes: {
        CeibaConstants.usersListRoute: (context) => const UsersListScreen(),
        CeibaConstants.postListRoute: (context) => PostsListScreen(),
      },
    );
  }
}
