import 'package:flutter/material.dart';
import 'package:application/presentation/screens/home_screen.dart';

class AppRouter {
  AppRouter();

  Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return _errorRoute();
    }
  }

  Route<dynamic>? _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('Erreur'),
        ),
        body: const Center(
          child: Text('Erreur: Page non trouvée!'),
        ),
      ),
    );
  }
}