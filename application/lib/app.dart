import 'package:flutter/material.dart';
import 'package:application/presentation/router/app_router.dart';
import 'package:application/core/constants/app_strings.dart';
import 'package:application/core/theme/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();

    return MaterialApp(
      title: AppStrings.appTitle,
      theme: AppTheme.lightTheme(),
      onGenerateRoute: appRouter.generateRoute,
      initialRoute: '/first_connexion',
    );
  }
}