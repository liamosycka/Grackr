import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gracker_app/core/injection/injection_container.dart';
import 'package:gracker_app/core/themes/bloc/theme_bloc.dart';
import 'package:gracker_app/core/themes/bloc/theme_state.dart';
import 'package:gracker_app/core/themes/global_themes.dart';
import 'package:gracker_app/presentation/authentication/bloc/login_bloc.dart';
import 'package:gracker_app/presentation/authentication/bloc/login_state.dart';
import 'package:gracker_app/presentation/authentication/pages/widgets/login_form.dart';
import 'package:gracker_app/presentation/core/blocs/auth_bloc.dart';
import 'package:gracker_app/presentation/core/blocs/auth_event.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: BlocProvider<LoginBloc>(
        create: (_) => getIt<LoginBloc>(),
        child: BlocListener<LoginBloc, LoginState>(
            listenWhen: (previous, current) =>
                previous.authFailureOrSuccess != current.authFailureOrSuccess,
            listener: (context, LoginState state) {
              state.authFailureOrSuccess.fold(
                () {},
                (either) => either.fold(
                  (failure) {
                    final String errorMessage = failure.maybeMap(
                      orElse: () => 'Error al iniciar sesión.',
                      noInternetConnection: (_) =>
                          "No hay conexión a internet.",
                      failedDomainVerification: (_) =>
                          "Los datos ingresados son inválidos.",
                    );
                    // TODO Reemplazar FlushbarHelper defaults por uno modificado
                    // TODO para que vaya bien con el diseño de la app
                    FlushbarHelper.createError(message: errorMessage)
                        .show(context);
                  },
                  (_) async {
                    FlushbarHelper.createSuccess(
                            message:
                                'Bienvenido, ${state.username.getOrCrash()}')
                        .show(context)
                        .then(
                      (_) {
                        BlocProvider.of<AuthBloc>(context).add(
                          AuthEvent.loggedIn(
                            permissionLevel: state.permissions,
                            username: state.username,
                          ),
                        );
                      },
                    );
                  },
                ),
              );
            },
            child: const _LoginLayout()),
      ),
    );
  }
}

class _LoginLayout extends StatelessWidget {
  const _LoginLayout({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Stack(
      children: <Widget>[
        const _BackgroundCircle(),
        Column(
          children: [
            const Flexible(
              flex: 58,
              child: _BackgroundLogo(),
            ),
            const Spacer(
              flex: 4,
            ),
            Flexible(
              flex: 38,
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(vertical: screenHeight * 0.01),
                child: FormArea(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _BackgroundLogo extends StatelessWidget {
  const _BackgroundLogo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight * 0.58,
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) => AspectRatio(
          aspectRatio: 1,
          child: state.appTheme == AppTheme.Admin
              ? SvgPicture.asset(
                  'assets/admin_login_logo.svg',
                  alignment: Alignment.bottomCenter,
                )
              : SvgPicture.asset(
                  'assets/guard_login_logo.svg',
                  alignment: Alignment.bottomCenter,
                ),
        ),
      ),
    );
  }
}

class _BackgroundCircle extends StatelessWidget {
  const _BackgroundCircle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final colorScheme = Theme.of(context).colorScheme;
    return ClipPath(
      clipper: ClipCustomCircle(),
      child: Container(
        color: colorScheme.onBackground,
        height: screenHeight,
      ),
    );
  }
}

class ClipCustomCircle extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path(); // use for shape your container

    final circleHalfPosition = size.height * 0.6;
    final circleTopPosition = size.height * 0.4;

    path.lineTo(0.0, circleHalfPosition);
    path.quadraticBezierTo(
        size.width * 0.5, circleTopPosition, size.width, circleHalfPosition);
    path.lineTo(size.width, size.height);
    path.lineTo(0.0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

class FormArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.15),
      child: const LoginForm(),
    );
  }
}
