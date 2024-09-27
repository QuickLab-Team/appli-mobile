import 'package:flutter/material.dart';
import 'package:application/presentation/router/app_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();

    return MaterialApp(
      title: 'test',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromRGBO(247,246,207, 1.0)),
      ),
      onGenerateRoute: appRouter.generateRoute,
      initialRoute: '/',
    );
  }
}