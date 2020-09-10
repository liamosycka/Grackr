import 'package:flutter/material.dart';
import 'package:gracker_app/core/themes/my_flutter_app_icons.dart';
import 'package:gracker_app/presentation/core/pages/widgets/backdrop/backdrop_bar.dart';
import 'package:gracker_app/presentation/core/pages/widgets/backdrop/backdrop_children.dart';
import 'package:gracker_app/presentation/core/pages/widgets/backdrop/backdrop_scaffold.dart';

class CrearEmpleadoPage extends StatelessWidget {
  const CrearEmpleadoPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BackdropScaffold(
      backdropBar: BackdropBar(
        title: 'Crear empleado',
        leadingIcon: MyFlutterApp.mdi_chevron_left,
        leadingOnTap: () {
          Navigator.of(context).maybePop();
        },
      ),
      backdropControllerValue: 0,
      frontPanelTitle: 'Datos de Usuario',
      frontPanelChild: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Nombre de Usuario'),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text('Nombre de Usuario'),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Nombre de Usuario'),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text('Nombre de Usuario'),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Nombre de Usuario'),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text('Nombre de Usuario'),
                ),
              ),
            ],
          ),
          Divider(),
        ],
      ),
      children: [
        BackdropTextField(
          label: 'Nombre',
        ),
        BackdropTextField(
          label: 'Apellido',
        ),
        BackdropTextField(
          label: 'Legajo',
        ),
      ],
    );
  }
}
