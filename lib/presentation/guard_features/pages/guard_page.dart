import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gracker_app/core/routes/router.dart';
import 'package:gracker_app/core/themes/global_themes.dart';
import 'package:gracker_app/presentation/core/blocs/auth_bloc.dart';
import 'package:gracker_app/presentation/core/blocs/auth_event.dart';
import 'package:gracker_app/presentation/core/blocs/auth_state.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class GuardPage extends StatefulWidget {
  const GuardPage({Key key}) : super(key: key);
  @override
  _GuardPageState createState() => _GuardPageState();
}

class _GuardPageState extends State<GuardPage> {
  @override
  Widget build(BuildContext context) {
    final colorSheme = Theme.of(context).colorScheme;

    final screenHeight = MediaQuery.of(context).size.height;
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeMap(
          orElse: () {},
          unauthenticated: (state) {
            Navigator.of(context).pushReplacementNamed(Routes.landing);
          },
        );
      },
      child: SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              Column(
                children: const [
                  Flexible(
                    child: _TopBar(),
                  ),
                  Flexible(
                    flex: 9,
                    child: _MainScreen(),
                  ),
                ],
              ),
              _MainButton(screenHeight: screenHeight, colorSheme: colorSheme),
            ],
          ),
        ),
      ),
    );
  }
}

class _MainButton extends StatelessWidget {
  const _MainButton({
    Key key,
    @required this.screenHeight,
    @required this.colorSheme,
  }) : super(key: key);

  final double screenHeight;
  final ColorScheme colorSheme;

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: EdgeInsets.only(bottom: screenHeight * 0.02),
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: colorSheme.primary,
            shape: BoxShape.circle,
            boxShadow: kElevationToShadow[3],
          ),
          child: IconButton(
            icon: Icon(
              Icons.add,
              size: 40,
              color: colorSheme.onBackground,
            ),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}

class _MainScreen extends StatelessWidget {
  const _MainScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorSheme = Theme.of(context).colorScheme;
    return LayoutBuilder(
      builder: (context, constraints) => Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(constraints.maxHeight * 0.05),
          ),
          color: colorSheme.onBackground,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: constraints.maxWidth * 0.05,
          vertical: constraints.maxHeight * 0.03,
        ),
        child: const _EntriesList(),
      ),
    );
  }
}

class _EntriesList extends StatelessWidget {
  const _EntriesList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorSheme = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Reportes Previos',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        const Divider(
          color: Colors.transparent,
        ),
        Container(
          height: 15,
          decoration: BoxDecoration(
              color: colorSheme.primary,
              borderRadius: BorderRadius.circular(20)),
        ),
        const Divider(
          color: Colors.transparent,
        ),
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            itemExtent: 80,
            itemBuilder: (context, index) {
              // TODO quitar este bool
              final bool tempIsIngreso = index % 2 == 1;
              return Container(
                margin: const EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  gradient: tempIsIngreso ? Palette.success : Palette.failure,
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: kElevationToShadow[1],
                ),
                child: Row(
                  children: tempIsIngreso
                      ? [
                          Expanded(
                            flex: 13,
                            child: _EntriesCard(
                                colorSheme: colorSheme,
                                tempIsIngreso: tempIsIngreso),
                          ),
                          const Spacer()
                        ]
                      : [
                          const Spacer(),
                          Expanded(
                            flex: 13,
                            child: _EntriesCard(
                                colorSheme: colorSheme,
                                tempIsIngreso: tempIsIngreso),
                          ),
                        ],
                ),
              );
            },
            itemCount: 16,
          ),
        ),
      ],
    );
  }
}

class _EntriesCard extends StatelessWidget {
  const _EntriesCard({
    Key key,
    @required this.colorSheme,
    @required this.tempIsIngreso,
  }) : super(key: key);

  final ColorScheme colorSheme;
  final bool tempIsIngreso;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
      height: double.infinity,
      decoration: BoxDecoration(
        color: colorSheme.secondaryVariant,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: tempIsIngreso
            ? [
                Expanded(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: _EntryTimeColumn(
                      tempIsIngreso: tempIsIngreso,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: _EntryInfoColumn(tempIsIngreso: tempIsIngreso),
                  ),
                ),
              ]
            : [
                Expanded(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: _EntryInfoColumn(tempIsIngreso: tempIsIngreso),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: _EntryTimeColumn(
                      tempIsIngreso: tempIsIngreso,
                    ),
                  ),
                ),
              ],
      ),
    );
  }
}

class _EntryInfoColumn extends StatelessWidget {
  const _EntryInfoColumn({
    Key key,
    @required this.tempIsIngreso,
  }) : super(key: key);

  final bool tempIsIngreso;

  @override
  Widget build(BuildContext context) {
    return Text(
      tempIsIngreso ? 'Ingreso' : 'Egreso',
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}

class _EntryTimeColumn extends StatelessWidget {
  const _EntryTimeColumn({
    Key key,
    @required this.tempIsIngreso,
  }) : super(key: key);

  final bool tempIsIngreso;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment:
          tempIsIngreso ? CrossAxisAlignment.start : CrossAxisAlignment.end,
      children: const [
        Flexible(
          flex: 3,
          child: Text(
            '13/09/2020',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Spacer(),
        Flexible(
          flex: 3,
          child: Text(
            '09:01',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}

class _TopBar extends StatelessWidget {
  const _TopBar({
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
                  fontWeight: FontWeight.bold),
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
