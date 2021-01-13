import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gracker_app/presentation/core/blocs/auth_bloc.dart';
import 'package:gracker_app/presentation/core/blocs/auth_event.dart';
import 'package:gracker_app/presentation/core/blocs/auth_state.dart';
import 'package:gracker_app/core/routes/router.dart' as my_router;

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  AnimationController outroController;
  @override
  void initState() {
    super.initState();
    outroController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
  }

  @override
  void dispose() {
    outroController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        outroController.forward().then(
          (_) {
            Navigator.of(context).pushReplacementNamed(
                my_router.Router.namedRouteFromAuth(state));
          },
        );
      },
      child: _SplashAnimation(
        onIntroEnd: () {
          context.read<AuthBloc>().add(const AuthEvent.appStart());
        },
        outroController: outroController,
      ),
    );
  }
}

class _SplashAnimation extends StatefulWidget {
  const _SplashAnimation({
    @required this.onIntroEnd,
    @required this.outroController,
  });

  final void Function() onIntroEnd;
  final AnimationController outroController;
  @override
  _SplashAnimationState createState() => _SplashAnimationState();
}

class _SplashAnimationState extends State<_SplashAnimation>
    with TickerProviderStateMixin {
  AnimationController introController;
  @override
  void initState() {
    super.initState();
    introController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    introController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        widget.onIntroEnd();
      }
    });
    introController.forward();
  }

  @override
  void dispose() {
    introController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      body: FadeTransition(
        opacity: CurvedAnimation(
          parent: introController,
          curve: Curves.easeInCubic,
        ),
        child: Center(
          child: Column(
            children: [
              Expanded(
                flex: 6,
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text(
                    'Grackr',
                    style: TextStyle(
                      fontSize: 80,
                      fontWeight: FontWeight.bold,
                      color: colorScheme.onBackground,
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 4,
                child: ScaleTransition(
                  scale: Tween<double>(
                    begin: 1,
                    end: 0,
                  ).animate(
                    CurvedAnimation(
                      parent: widget.outroController,
                      curve: Curves.easeInCubic,
                    ),
                  ),
                  child: SizedBox(
                    height: 80,
                    width: 80,
                    child: CircularProgressIndicator(
                      backgroundColor: colorScheme.onBackground,
                      strokeWidth: 8,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
