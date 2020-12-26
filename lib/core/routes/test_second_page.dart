import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gracker_app/core/routes/router.dart';
// import 'package:gracker_app/presentation/admin_features/administracion_empleados/pages/admin_empleados_page.dart';
import 'package:gracker_app/presentation/admin_features/pages/admin_page.dart';
import 'package:gracker_app/presentation/core/blocs/auth_bloc.dart';
import 'package:gracker_app/presentation/core/blocs/auth_state.dart';

class TestSecondPage extends StatelessWidget {
  const TestSecondPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final colorSheme = Theme.of(context).colorScheme;
    final screenHeight = MediaQuery.of(context).size.height;

    return BlocListener<AuthBloc, AuthState>(
      //? Log out
      listener: (context, state) {
        state.maybeMap(
          orElse: () {},
          unauthenticated: (state) {
            Navigator.of(context).pushReplacementNamed(Routes.landing);
          },
        );
      },
      child: const _Views(),
    );
  }
}

class _Views extends StatefulWidget {
  const _Views({
    Key key,
  }) : super(key: key);

  @override
  __ViewsState createState() => __ViewsState();
}

class __ViewsState extends State<_Views> {
  PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          dragStartBehavior: DragStartBehavior.down,
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          scrollDirection: Axis.horizontal,
          children: const [
            AdminPage(),
            //AdminEmpleadosPage(),
          ],
        ),
        Center(
          child: GestureDetector(
              onTap: () => pageController.animateToPage(
                  (pageController.page.round() - 1).abs(),
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeIn),
              child: Container(
                height: 100,
                width: 100,
                color: Colors.red,
              )),
        ),
      ],
    );
  }
}
