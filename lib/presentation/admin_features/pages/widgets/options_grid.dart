import 'package:flutter/material.dart';
import 'package:gracker_app/core/routes/router.dart';
import 'package:gracker_app/core/themes/global_themes.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class OptionsGrid extends StatefulWidget {
  const OptionsGrid({
    Key key,
  }) : super(key: key);

  @override
  _OptionsGridState createState() => _OptionsGridState();
}

class _OptionsGridState extends State<OptionsGrid> {
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
        title: 'Administrar',
        subtitle: 'empleados',
        onTap: (context) {
          Navigator.of(context).pushNamed(Routes.adminEmployees);
        },
      ),
      _CardContent(
        icon: Icons.person_pin,
        title: 'Reportes',
        subtitle: 'recientes',
        onTap: (context) {
          Navigator.of(context).pushNamed(Routes.test);
        },
      ),
      _CardContent(
        icon: Icons.timeline,
        title: 'Estadísticas',
        subtitle: 'por empleado',
        onTap: (context) {
          // print('Hola soy un boton UwU');
        },
      ),
      _CardContent(
        icon: Icons.ac_unit,
        title: 'Algo',
        subtitle: 'super interesante',
        onTap: (context) {
          Navigator.of(context).pushNamed(Routes.test2);
        },
      ),
      _CardContent(
        icon: Icons.person_add,
        title: 'Crear',
        subtitle: 'un empleado',
        onTap: (context) {
          Navigator.of(context).pushNamed(Routes.createEmployee);
        },
      ),
      _CardContent(
        icon: Icons.delete_forever,
        title: 'Eliminar',
        subtitle: 'un empleado',
        onTap: (context) {
          // print('Hola soy un boton UwU');
        },
      ),
      _CardContent(
        icon: MdiIcons.palette,
        title: 'Cambiar theme',
        subtitle: 'porque si :)',
        onTap: (context) {},
      ),
      _CardContent(
        icon: MdiIcons.accountSearch,
        title: 'Buscar',
        subtitle: 'por empleado',
        onTap: (context) {
          // print('Hola soy un boton UwU');
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
                        fit: BoxFit.contain,
                        child: Text(
                          title,
                          style: const TextStyle(
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
