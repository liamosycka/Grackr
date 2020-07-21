// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../authentication/pages/landing_page.dart';
import '../pages/splash/splash_page.dart';
import 'test_page.dart';

class Routes {
  static const String splashPage = '/';
  static const String landingPage = '/landing-page';
  static const String testPage = '/test-page';
  static const all = <String>{
    splashPage,
    landingPage,
    testPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.landingPage, page: LandingPage),
    RouteDef(Routes.testPage, page: TestPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashPage(),
        settings: data,
      );
    },
    LandingPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => const LandingPage(),
        settings: data,
      );
    },
    TestPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => TestPage(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushSplashPage() => push<dynamic>(Routes.splashPage);

  Future<dynamic> pushLandingPage() => push<dynamic>(Routes.landingPage);

  Future<dynamic> pushTestPage() => push<dynamic>(Routes.testPage);
}
