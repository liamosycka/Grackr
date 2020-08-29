import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gracker_app/presentation/core/blocs/auth_bloc.dart';
import 'package:gracker_app/presentation/core/blocs/auth_event.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorSheme = Theme.of(context).colorScheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Center(
            child: IconButton(
              icon: Icon(
                MdiIcons.tune,
                size: 30,
                color: colorSheme.onBackground,
              ),
              onPressed: () {},
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Center(
            child: Text(
              'Grackr',
              style: TextStyle(
                color: colorSheme.onBackground,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Expanded(
          child: Center(
            child: IconButton(
                icon: Icon(
                  MdiIcons.shieldAccountOutline,
                  size: 30,
                  color: colorSheme.onBackground,
                ),
                onPressed: () {
                  BlocProvider.of<AuthBloc>(context)
                      .add(const AuthEvent.loggedOut());
                }),
          ),
        ),
      ],
    );
  }
}
