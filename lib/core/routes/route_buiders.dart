import 'package:flutter/cupertino.dart';

class BackdropSlideRouteBuilder extends PageRouteBuilder {
  final Widget page;
  final int milliseconds;
  final bool startScreen;

  // ignore: avoid_positional_boolean_parameters
  BackdropSlideRouteBuilder(this.startScreen,
      {@required this.page, @required this.milliseconds})
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionDuration: Duration(milliseconds: milliseconds),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0.0, 0.0),
                end: const Offset(-1.0, 0.0),
              ).animate(
                CurvedAnimation(
                    parent: secondaryAnimation, curve: Curves.easeIn),
              ),
              child: startScreen
                  ? child
                  : SlideTransition(
                      position: Tween<Offset>(
                        begin: const Offset(1.0, 0.0),
                        end: const Offset(0.0, 0.0),
                      ).animate(
                        CurvedAnimation(
                            parent: animation, curve: Curves.easeIn),
                      ),
                      child: child,
                    ),
            );
          },
        );
}

class BackdropSlideUpwardsRouteBuilder extends PageRouteBuilder {
  final Widget page;
  final int milliseconds;
  final bool startScreen;

  // ignore: avoid_positional_boolean_parameters
  BackdropSlideUpwardsRouteBuilder(this.startScreen,
      {@required this.page, @required this.milliseconds})
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionDuration: Duration(milliseconds: milliseconds),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0.0, 0.0),
                end: const Offset(-1.0, 0.0),
              ).animate(
                CurvedAnimation(
                    parent: secondaryAnimation, curve: Curves.easeIn),
              ),
              child: startScreen
                  ? child
                  : SlideTransition(
                      position: Tween<Offset>(
                        begin: const Offset(0.0, 1.0),
                        end: const Offset(0.0, 0.0),
                      ).animate(
                        CurvedAnimation(
                            parent: animation, curve: Curves.fastOutSlowIn),
                      ),
                      child: child,
                    ),
            );
          },
        );
}

class BackdropSlideAndStayRouteBuilder extends PageRouteBuilder {
  final Widget page;
  final int milliseconds;
  final bool startScreen;

  // ignore: avoid_positional_boolean_parameters
  BackdropSlideAndStayRouteBuilder(this.startScreen,
      {@required this.page, @required this.milliseconds})
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionDuration: Duration(milliseconds: milliseconds),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return startScreen
                ? child
                : SlideTransition(
                    position: Tween<Offset>(
                      begin: const Offset(1.0, .0),
                      end: const Offset(0.0, 0.0),
                    ).animate(
                      CurvedAnimation(parent: animation, curve: Curves.easeIn),
                    ),
                    child: child,
                  );
          },
        );
}

// SlideTransition(
//                       position: Tween<Offset>(
//                         begin: const Offset(1.0, 0.0),
//                         end: const Offset(0.0, 0.0),
//                       ).animate(CurvedAnimation(
//                           parent: animation, curve: Curves.easeIn)),
//                       child: child,
//                     )
