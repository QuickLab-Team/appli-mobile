import 'package:flutter/material.dart';
import 'package:application/presentation/router/app_router.dart';
import 'package:application/core/constants/app_strings.dart';  // Importer les strings avec la police

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();

    return MaterialApp(
      title: 'Application',
      theme: ThemeData(
        fontFamily: AppStrings.fontFamily,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromRGBO(247, 246, 207, 1.0),
        ),
        textTheme: const TextTheme(
          bodyText1: TextStyle(fontSize: 14),
          bodyText2: TextStyle(fontSize: 16),
          headline1: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      onGenerateRoute: appRouter.generateRoute,
      initialRoute: '/login',
    );
  }
}