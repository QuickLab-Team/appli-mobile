import 'package:flutter/material.dart';
import 'package:application/presentation/screens/home_screen.dart';
import 'package:application/presentation/screens/login_screen.dart';
import 'package:application/presentation/screens/first_connexion_screen.dart';
import 'package:application/presentation/screens/register_screen.dart';

class AppRouter {
  AppRouter();

  Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case '/login':
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case '/first_connexion':
        return MaterialPageRoute(builder: (_) => const FirstConnexionScreen());
      case '/register':
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
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