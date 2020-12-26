import 'package:flutter/material.dart';

class BackdropOpacityTransition extends StatelessWidget {
  const BackdropOpacityTransition({Key key, @required this.child})
      : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final transitionAnimation = ModalRoute.of(context).animation;
    return transitionAnimation != null
        ? AnimatedBuilder(
            animation: transitionAnimation,
            builder: (context, snapshot) {
              return FadeTransition(
                opacity: Tween<double>(
                  begin: 0.0,
                  end: 1.0,
                ).animate(CurvedAnimation(
                    parent: transitionAnimation,
                    curve: const Interval(
                      0.5,
                      1.0,
                      curve: Curves.easeInOut,
                    ))),
                child: child,
              );
            })
        : child;
  }
}
