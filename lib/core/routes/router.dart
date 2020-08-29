import 'package:flutter/material.dart';
import 'package:gracker_app/core/routes/test_page.dart';
import 'package:gracker_app/presentation/admin_features/guard_crud/pages/create_guard_page.dart';
import 'package:gracker_app/presentation/admin_features/pages/admin_page.dart';
import 'package:gracker_app/presentation/authentication/pages/landing_page.dart';
import 'package:gracker_app/presentation/core/pages/splash/splash_page.dart';
import 'package:gracker_app/presentation/guard_features/pages/guard_page.dart';

class Routes {
  static const String homeGuard = 'homeGuard';
  static const String homeAdmin = 'homeAdmin';
  static const String createGuard = 'createGuard';
  static const String landing = 'landing';
  static const String splash = 'splash';
  static const String test = 'test';
}

class Router {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    // Elementos pasados por el Navigator.pushNamed()
    final args = settings.arguments;
    Route<dynamic> route;

    route = _errorRoute();
    switch (settings.name) {
      case Routes.landing:
        route = MaterialPageRoute(builder: (_) => const LandingPage());
        break;
      case Routes.splash:
        route = MaterialPageRoute(builder: (_) => SplashPage());
        break;
      case Routes.homeAdmin:
        route = MaterialPageRoute(builder: (_) => const AdminPage());
        break;
      case Routes.homeGuard:
        route = MaterialPageRoute(builder: (_) => const GuardPage());
        break;
      case Routes.createGuard:
        route = MaterialPageRoute(builder: (_) => const CreateGuardPage());
        break;
      case Routes.test:
        route = MaterialPageRoute(builder: (_) => TestPage());
        break;
      default:
        route = _errorRoute();
        break;
    }
    return route;
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) {
        return const Scaffold(
          body: Center(
            child: Text("Ruta no implementada."),
          ),
        );
      },
    );
  }
}
