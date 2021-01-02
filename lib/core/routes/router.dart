import 'package:flutter/material.dart';
import 'package:gracker_app/core/routes/route_buiders.dart';
import 'package:gracker_app/core/routes/test_page.dart';
import 'package:gracker_app/core/routes/test_second_page.dart';
import 'package:gracker_app/presentation/admin_features/admin_employees/misc/employee_preview_primitive.dart';
import 'package:gracker_app/presentation/admin_features/admin_employees/pages/admin_employees_page.dart';
import 'package:gracker_app/presentation/admin_features/create_employee/pages/create_employee_page.dart';
import 'package:gracker_app/presentation/admin_features/inspect_employee/pages/inspect_employee_page.dart';
import 'package:gracker_app/presentation/admin_features/pages/admin_page.dart';
import 'package:gracker_app/presentation/authentication/pages/landing_page.dart';
import 'package:gracker_app/presentation/core/pages/splash/splash_page.dart';
import 'package:gracker_app/presentation/guard_features/pages/guard_page.dart';

class Routes {
  static const String homeGuard = 'homeGuard';
  static const String homeAdmin = 'homeAdmin';
  static const String adminEmployees = 'adminEmployees';
  static const String createEmployee = 'createEmployee';
  static const String inspectEmployee = 'inspectEmployee';
  static const String landing = 'landing';
  static const String splash = 'splash';
  static const String test = 'test';
  static const String test2 = 'test2';
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
        // route = MaterialPageRoute(builder: (_) => const AdminPage());
        route = BackdropSlideRouteBuilder(
          true,
          page: const AdminPage(),
          milliseconds: 500,
        );
        break;
      case Routes.homeGuard:
        route = MaterialPageRoute(builder: (_) => const GuardPage());
        break;
      case Routes.createEmployee:
        route = BackdropSlideRouteBuilder(
          false,
          page: const CreateEmployeePage(),
          milliseconds: 500,
        );
        break;
      case Routes.adminEmployees:
        // route = MaterialPageRoute(builder: (_) => const AdminEmpleadosPage());
        route = BackdropSlideAndStayRouteBuilder(
          false,
          page: const AdminEmployeesPage(),
          milliseconds: 500,
        );
        break;
      case Routes.inspectEmployee:
        // route = MaterialPageRoute(builder: (_) => const AdminEmpleadosPage());
        if (args is EmployeePreviewPrimitive) {
          route = BackdropSlideUpwardsRouteBuilder(
            false,
            page: InspectEmployeePage(
              preview: args,
            ),
            milliseconds: 800,
          );
        }
        break;
      case Routes.test:
        route = MaterialPageRoute(builder: (_) => TestPage());
        break;
      case Routes.test2:
        route = MaterialPageRoute(builder: (_) => const TestSecondPage());
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
