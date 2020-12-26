import 'package:flutter/material.dart';
import 'package:gracker_app/core/routes/router.dart';
import 'package:gracker_app/core/themes/global_themes.dart';
import 'package:gracker_app/core/themes/my_flutter_app_icons.dart';
import 'package:gracker_app/presentation/core/pages/widgets/backdrop/backdrop_bar.dart';
import 'package:gracker_app/presentation/core/pages/widgets/backdrop/backdrop_children.dart';
import 'package:gracker_app/presentation/core/pages/widgets/backdrop/backdrop_scaffold.dart';

class AdminEmpleadosPage extends StatefulWidget {
  const AdminEmpleadosPage({Key key}) : super(key: key);

  @override
  _AdminEmpleadosPageState createState() => _AdminEmpleadosPageState();
}

class _AdminEmpleadosPageState extends State<AdminEmpleadosPage>
    with SingleTickerProviderStateMixin {
  TextEditingController textFilterController;

  @override
  void initState() {
    super.initState();
    textFilterController = TextEditingController();
  }

  @override
  void dispose() {
    textFilterController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //print('Compeltederere: ${animation.isCompleted}');
    //print('Modal: ${ModalRoute.of(context).animation}');
    return BackdropScaffold(
      backdropBar: BackdropBar(
        title: 'Administrar empleados',
        leadingIcon: MyFlutterApp.mdi_chevron_left,
        leadingOnTap: () {
          Navigator.of(context).pop();
        },
        actionIcon: Icons.person_add,
        actionOnTap: () {
          Navigator.of(context).pushNamed(Routes.createGuard);
          //backdropController.fling(velocity: isPanelVisible ? -1.0 : 1.0);
        },
      ),
      backdropControllerValue: 0,
      frontPanelTitle: 'Resultados',
      frontPanelChild: const _EmpleadosList(),
      frontPanelCollapsedChild: Text('JAJAJAA'),
      children: _createChildrenList(),
    );
  }

  List<BackdropChild> _createChildrenList() {
    return [
      BackdropTextField(
        label: 'Filtrar aqui',
      ),
    ];
  }
}

class _EmpleadosList extends StatelessWidget {
  const _EmpleadosList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return ListView.builder(
      itemCount: 15,
      itemBuilder: (context, index) => Container(
        height: 70,
        margin: const EdgeInsets.fromLTRB(5, 0, 5, 10),
        child: Material(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          color: colorScheme.secondaryVariant,
          elevation: 3,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ralph Edwards',
                        style: TextStyle(fontSize: FontValues.h3),
                      ),
                      Text(
                        'GA#39319',
                        style: TextStyle(
                            fontSize: FontValues.h4, color: Palette.subtitle),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Guardia',
                  style: TextStyle(
                      fontSize: FontValues.h4, color: Palette.subtitle),
                ),
                Icon(
                  Icons.security,
                  size: FontValues.h2,
                  color: Palette.subtitle,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//! /////////////////////////////////////////////////////////////////////////
//! ////////////////////////// Core Modules /////////////////////////////////
//! /////////////////////////////////////////////////////////////////////////
