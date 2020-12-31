import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gracker_app/core/themes/global_themes.dart';
import 'package:gracker_app/presentation/admin_features/create_guard/bloc/create_guard_bloc.dart';
import 'package:gracker_app/presentation/admin_features/create_guard/bloc/create_guard_event.dart';
import 'package:gracker_app/presentation/admin_features/create_guard/bloc/create_guard_state.dart';

class FrontAction extends StatelessWidget {
  const FrontAction({
    Key key,
    @required this.currentState,
  }) : super(key: key);

  final CreateGuardState currentState;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 200),
      transitionBuilder: (child, animation) => FadeTransition(
        opacity: Tween<double>(
          begin: 0,
          end: 1,
        ).animate(animation),
        child: child,
      ),
      child: currentState.isSubmitting
          ? const CircularProgressIndicator()
          : Material(
              color: Colors.transparent,
              elevation: 2,
              borderRadius: BorderRadius.circular(30),
              child: GestureDetector(
                onTap: () {
                  // print(
                  //     'Legajo a lparretar el boton: ${BlocProvider.of<CreateGuardBloc>(context).state.employeeID}');
                  BlocProvider.of<CreateGuardBloc>(context)
                      .add(const CreateGuardEvent.submit());
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: colorScheme.primary,
                  ),
                  child: Text(
                    'Crear',
                    style: TextStyle(
                      color: colorScheme.onBackground,
                      fontSize: FontValues.h4,
                    ),
                  ),
                ),
              ),
            ),
    );
  }
}
