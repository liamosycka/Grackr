import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gracker_app/core/routes/router.dart';
import 'package:gracker_app/core/themes/global_themes.dart';
import 'package:gracker_app/presentation/admin_features/pages/widgets/options_grid.dart';
import 'package:gracker_app/presentation/core/blocs/auth_bloc.dart';
import 'package:gracker_app/presentation/core/blocs/auth_event.dart';
import 'package:gracker_app/presentation/core/blocs/auth_state.dart';
import 'package:gracker_app/presentation/core/pages/widgets/backdrop/backdrop_bar.dart';
import 'package:gracker_app/presentation/core/pages/widgets/backdrop/backdrop_scaffold.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
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
      child: BackdropScaffold(
        backdropBar: BackdropBar(
          title: 'Grackr',
          leadingIcon: MdiIcons.tune,
          actionIcon: MdiIcons.shieldAccountOutline,
          actionOnTap: () {
            showDialog(
              context: context,
              builder: (context) => _LogOutDialog(colorScheme: colorScheme),
            );
            // BlocProvider.of<AuthBloc>(context).add(const AuthEvent.loggedOut());
          },
          leadingOnTap: () {
            Navigator.of(context).maybePop();
          },
        ),
        frontPanelTitle: 'Acciones',
        frontPanelChild: const OptionsGrid(),
        children: const [],
      ),
    );
  }
}

class _LogOutDialog extends StatelessWidget {
  const _LogOutDialog({
    Key key,
    @required this.colorScheme,
  }) : super(key: key);

  final ColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Center(
          child: Text(
        '¿Seguro que quiere cerrar la sesión?',
        textAlign: TextAlign.center,
      )),
      backgroundColor: colorScheme.onBackground,
      titleTextStyle: TextStyle(
        color: colorScheme.background,
        fontWeight: FontValues.bold,
        fontSize: FontValues.h3,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      actions: [
        FlatButton(
          onPressed: () {
            Navigator.of(context).maybePop();
          },
          child: Text(
            'No',
            style: TextStyle(
              color: colorScheme.primary,
              fontWeight: FontValues.bold,
              fontSize: FontValues.h4,
            ),
          ),
        ),
        FlatButton(
          onPressed: () {
            BlocProvider.of<AuthBloc>(context).add(const AuthEvent.loggedOut());
          },
          child: Text(
            'Si',
            style: TextStyle(
              color: colorScheme.primary,
              fontWeight: FontValues.bold,
              fontSize: FontValues.h4,
            ),
          ),
        ),
      ],
    );
  }
}
