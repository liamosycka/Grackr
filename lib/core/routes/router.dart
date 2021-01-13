import 'package:flutter/material.dart';
import 'package:gracker_app/core/routes/route_buiders.dart';
import 'package:gracker_app/core/routes/test_page.dart';
import 'package:gracker_app/core/routes/test_second_page.dart';
import 'package:gracker_app/domain/authentication/value_objects.dart';
import 'package:gracker_app/presentation/admin_features/admin_employees/misc/employee_preview_primitive.dart';
import 'package:gracker_app/presentation/admin_features/admin_employees/pages/admin_employees_page.dart';
import 'package:gracker_app/presentation/admin_features/create_employee/pages/create_employee_page.dart';
import 'package:gracker_app/presentation/admin_features/inspect_employee/pages/inspect_employee_page.dart';
import 'package:gracker_app/presentation/admin_features/pages/admin_page.dart';
import 'package:gracker_app/presentation/authentication/pages/landing_page.dart';
import 'package:gracker_app/presentation/core/blocs/auth_state.dart';
import 'package:gracker_app/presentation/core/pages/main_app_widget.dart';
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

// ignore: avoid_classes_with_only_static_members
class Router {
  static final GlobalKey<NavigatorState> navKey = GlobalKey();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    // Elementos pasados por el Navigator.pushNamed()
    final args = settings.arguments;
    Route<dynamic> route;
    Widget page;
    route = _errorRoute();
    switch (settings.name) {
      case Routes.landing:
        page = GlobalBlocConsumers(
          navKey: navKey,
          key: const ValueKey('global'),
          child: const LandingPage(),
        );
        route = MaterialPageRoute(builder: (_) => page);
        break;
      case Routes.splash:
        page = SplashPage();
        route = MaterialPageRoute(builder: (_) => page);
        break;
      case Routes.homeAdmin:
        page = GlobalBlocConsumers(
          navKey: navKey,
          key: const ValueKey('global'),
          child: const AdminPage(),
        );
        route = BackdropSlideRouteBuilder(
          true,
          page: page,
          milliseconds: 500,
        );
        break;
      case Routes.homeGuard:
        page = GlobalBlocConsumers(
          navKey: navKey,
          key: const ValueKey('global'),
          child: const GuardPage(),
        );
        route = MaterialPageRoute(builder: (_) => page);
        break;
      case Routes.createEmployee:
        page = const CreateEmployeePage();
        route = BackdropSlideRouteBuilder(
          false,
          page: page,
          milliseconds: 500,
        );
        break;
      case Routes.adminEmployees:
        page = const AdminEmployeesPage();
        route = BackdropSlideAndStayRouteBuilder(
          false,
          page: page,
          milliseconds: 500,
        );
        break;
      case Routes.inspectEmployee:
        if (args is EmployeePreviewPrimitive) {
          page = InspectEmployeePage(
            preview: args,
          );
          route = BackdropSlideUpwardsRouteBuilder(
            false,
            page: page,
            milliseconds: 800,
          );
        }
        break;
      case Routes.test:
        page = TestPage();
        route = MaterialPageRoute(builder: (_) => page);
        break;
      case Routes.test2:
        page = const TestSecondPage();
        route = MaterialPageRoute(builder: (_) => page);
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

  static String namedRouteFromAuth(AuthState state) {
    return state.map(
      uninitialized: (_) => Routes.landing,
      authenticated: (state) {
        return state.permissionLevel.getOrCrash() == PermissionLevel.admin
            ? Routes.homeAdmin
            : Routes.homeGuard;
      },
      unauthenticated: (_) => Routes.landing,
    );
  }
}
