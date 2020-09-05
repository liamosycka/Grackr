import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gracker_app/core/routes/router.dart';
import 'package:gracker_app/core/themes/global_themes.dart';
import 'package:gracker_app/presentation/core/blocs/auth_bloc.dart';
import 'package:gracker_app/presentation/core/blocs/auth_state.dart';
import 'package:gracker_app/presentation/core/pages/widgets/main_card.dart';
import 'package:gracker_app/presentation/core/pages/widgets/top_bar.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({Key key}) : super(key: key);
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
          body: Column(
            children: const [
              Flexible(
                child: TopBar(),
              ),
              Flexible(
                flex: 9,
                child: MainCard(child: _OptionsGrid()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _OptionsGrid extends StatefulWidget {
  const _OptionsGrid({
    Key key,
  }) : super(key: key);

  @override
  __OptionsGridState createState() => __OptionsGridState();
}

class __OptionsGridState extends State<_OptionsGrid> {
  List<_CardContent> cardsList;

  @override
  void initState() {
    super.initState();
    _initCardsList();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Column(
      children: [
        Text(
          'Acciones',
          style: TextStyle(
            color: colorScheme.background,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Divider(color: Colors.transparent),
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: GridView.builder(
              itemCount: cardsList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 22,
                crossAxisSpacing: 18,
              ),
              itemBuilder: (context, index) => Card(
                elevation: 2.5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 15,
                    ),
                    color: colorScheme.secondaryVariant,
                    alignment: Alignment.center,
                    child: cardsList[index],
                  ),
                ),
              ),
              // itemBuilder: (context, index) => ClipRRect(
              //   borderRadius: BorderRadius.circular(25),
              //   child: Container(
              //     padding: const EdgeInsets.symmetric(
              //       vertical: 10,
              //       horizontal: 15,
              //     ),
              //     decoration: BoxDecoration(
              //       color: colorScheme.secondaryVariant,
              //       boxShadow: kElevationToShadow[3],
              //     ),
              //     alignment: Alignment.center,
              //     child: cardsList[index],
              //   ),
              // ),
            ),
          ),
        ),
      ],
    );
  }

  void _initCardsList() {
    cardsList = [
      _CardContent(
        icon: Icons.search,
        title: 'Buscar',
        subtitle: 'por empleado',
        onTap: (context) {
          print('Hola soy un boton UwU');
        },
      ),
      _CardContent(
        icon: Icons.person_pin,
        title: 'Reportes',
        subtitle: 'recientes',
        onTap: (context) {
          print('Hola soy un boton UwU');
        },
      ),
      _CardContent(
        icon: Icons.timeline,
        title: 'Estadísticas',
        subtitle: 'por empleado',
        onTap: (context) {
          print('Hola soy un boton UwU');
        },
      ),
      _CardContent(
        icon: Icons.ac_unit,
        title: 'Algo',
        subtitle: 'super interesante',
        onTap: (context) {
          print('Hola soy un boton UwU');
        },
      ),
      _CardContent(
        icon: Icons.person_add,
        title: 'Crear',
        subtitle: 'un empleado',
        onTap: (context) {
          Navigator.of(context).pushNamed(Routes.createGuard);
        },
      ),
      _CardContent(
        icon: Icons.delete_forever,
        title: 'Eliminar',
        subtitle: 'un empleado',
        onTap: (context) {
          print('Hola soy un boton UwU');
        },
      ),
      _CardContent(
        icon: MdiIcons.accountSearch,
        title: 'Buscar',
        subtitle: 'por empleado',
        onTap: (context) {
          print('Hola soy un boton UwU');
        },
      ),
      _CardContent(
        icon: MdiIcons.accountSearch,
        title: 'Buscar',
        subtitle: 'por empleado',
        onTap: (context) {
          print('Hola soy un boton UwU');
        },
      ),
    ];
  }
}

class _CardContent extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final void Function(BuildContext context) onTap;
  const _CardContent({
    Key key,
    @required this.icon,
    @required this.title,
    @required this.subtitle,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap(context);
      },
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: FittedBox(
              child: Icon(icon),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                          child: FittedBox(
                        fit: BoxFit.fill,
                        child: Text(
                          title,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                      )),
                      Flexible(
                          child: FittedBox(
                        fit: BoxFit.fill,
                        child: Text(
                          subtitle,
                          style: TextStyle(
                            color: Palette.subtitle,
                            fontSize: 14,
                          ),
                        ),
                      )),
                    ],
                  ),
                ),
                const Expanded(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Icon(Icons.chevron_right),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
