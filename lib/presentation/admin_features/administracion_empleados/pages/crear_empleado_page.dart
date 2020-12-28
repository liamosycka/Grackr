import 'package:flutter/material.dart';
import 'package:gracker_app/core/themes/global_themes.dart';
import 'package:gracker_app/core/themes/my_flutter_app_icons.dart';
import 'package:gracker_app/presentation/core/pages/widgets/backdrop/backdrop_bar.dart';
import 'package:gracker_app/presentation/core/pages/widgets/backdrop/backdrop_children.dart';
import 'package:gracker_app/presentation/core/pages/widgets/backdrop/backdrop_scaffold.dart';

class CrearEmpleadoPage extends StatefulWidget {
  const CrearEmpleadoPage({Key key}) : super(key: key);

  @override
  _CrearEmpleadoPageState createState() => _CrearEmpleadoPageState();
}

class _CrearEmpleadoPageState extends State<CrearEmpleadoPage> {
  TextEditingController textControllerNombre;
  TextEditingController textControllerApellido;
  TextEditingController textControllerLegajo;

  @override
  void initState() {
    super.initState();
    textControllerNombre = TextEditingController()
      ..addListener(
        () {
          setState(() {});
        },
      );
    textControllerApellido = TextEditingController()
      ..addListener(
        () {
          setState(() {});
        },
      );
    textControllerLegajo = TextEditingController()
      ..addListener(
        () {
          setState(() {});
        },
      );
  }

  @override
  void dispose() {
    super.dispose();
    textControllerNombre.dispose();
    textControllerApellido.dispose();
    textControllerLegajo.dispose();
  }

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
          _InputDataRow(
            title: 'Nombre de Usuario',
            textController: textControllerNombre,
          ),
          _InputDataRow(
            title: 'Apellido de Usuario',
            textController: textControllerApellido,
          ),
          _InputDataRow(
            title: 'Legajo',
            textController: textControllerLegajo,
          ),
        ],
      ),
      // Column(
      //   children: [
      //     const Divider(),
      //     Container(
      //       margin: EdgeInsets.only(bottom: 10),
      //       height: 80,
      //       color: Colors.blue,
      //     ),
      //   ],
      // ),
      children: [
        BackdropTextField(
          textEditingController: textControllerNombre,
          label: 'Nombre',
        ),
        BackdropTextField(
          textEditingController: textControllerApellido,
          label: 'Apellido',
        ),
        BackdropTextField(
          textEditingController: textControllerLegajo,
          label: 'Legajo',
        ),
      ],
    );
  }
}

class _InputDataRow extends StatelessWidget {
  const _InputDataRow({
    Key key,
    @required this.textController,
    @required this.title,
  }) : super(key: key);

  final TextEditingController textController;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              title,
              style: TextStyle(color: Palette.subtitle),
            ),
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(textController.value.text.isEmpty
                ? '---'
                : textController.value.text),
          ),
        ),
      ],
    );
  }
}
