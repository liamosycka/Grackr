import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gracker_app/core/themes/global_themes.dart';
import 'package:gracker_app/core/value_transformers.dart';
import 'package:gracker_app/presentation/admin_features/create_guard/bloc/create_guard_bloc.dart';
import 'package:gracker_app/presentation/admin_features/create_guard/bloc/create_guard_state.dart';
import 'package:gracker_app/presentation/admin_features/create_guard/pages/crear_empleado_page.dart';
import 'package:gracker_app/presentation/core/blocs/auth_bloc.dart';
import 'package:gracker_app/presentation/core/pages/widgets/backdrop/front_panel.dart';

class CreateGuardFrontPanel extends StatelessWidget {
  const CreateGuardFrontPanel({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateGuardBloc, CreateGuardState>(
      builder: (context, state) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _InputDataRow(
                title: 'Nombre de Usuario',
                content: Text(
                  (state.surname.isValid() && state.employeeID.isValid())
                      ? transformIntoUsername(
                          state.surname.getOrCrash(),
                          state.employeeID.getOrCrash(),
                        ).value.fold(
                            (f) => 'Nombre de Usuario Inválido',
                            (username) => username,
                          )
                      : CrearEmpleadoPage.uninitializedString,
                ),
              ),
              _InputDataRow(
                title: 'Contraseña',
                content: Text(
                  (state.surname.isValid())
                      ? transformIntoPassword(
                          state.surname.getOrCrash(),
                        ).value.fold(
                            (f) => 'Nombre de Usuario Inválido',
                            (username) => username,
                          )
                      : CrearEmpleadoPage.uninitializedString,
                ),
              ),
              _InputDataRow(
                title: 'Legajo',
                content: Text(
                  state.employeeID.value.fold(
                    (failure) => CrearEmpleadoPage.uninitializedString,
                    (content) => content,
                  ),
                ),
              ),
              // TODO: Crear selección de rol, o crear una constante en algun
              // TODO: lugar para no tener el rol hard-coded
              const _InputDataRow(
                title: 'Rol',
                content: Text('Guardia'),
              ),
              const FrontPanelDivider(),
              const FrontPanelSection(title: 'Información adicional'),
              _InputDataRow(
                title: 'Fecha de creación',
                content: Text(
                  '${DateTime.now().day.toString().padLeft(2, '0')} / ${DateTime.now().month.toString().padLeft(2, '0')} / ${DateTime.now().year}',
                ),
              ),
              const _InputDataRow(
                title: 'Hora de creación',
                content: _TimeDisplay(),
              ),
              _InputDataRow(
                title: 'Creado por',
                content: Text(
                  BlocProvider.of<AuthBloc>(context).state.maybeMap(
                        orElse: () => CrearEmpleadoPage.uninitializedString,
                        authenticated: (s) => s.username.value.fold(
                          (f) => CrearEmpleadoPage.uninitializedString,
                          (username) => username,
                        ),
                      ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class _TimeDisplay extends StatefulWidget {
  const _TimeDisplay({
    Key key,
  }) : super(key: key);

  @override
  __TimeDisplayState createState() => __TimeDisplayState();
}

class __TimeDisplayState extends State<_TimeDisplay> {
  String _time;
  Timer timer;

  @override
  void initState() {
    super.initState();
    _time = _currentTime();
    timer = Timer.periodic(
      const Duration(seconds: 30),
      (Timer t) => setState(() {
        _time = _currentTime();
      }),
    );
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _time,
    );
  }

  String _currentTime() {
    return "${DateTime.now().hour.toString().padLeft(2, '0')} : ${DateTime.now().minute.toString().padLeft(2, '0')}";
  }
}

class _InputDataRow extends StatelessWidget {
  const _InputDataRow({
    Key key,
    @required this.title,
    @required this.content,
  }) : super(key: key);

  final String title;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Row(
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
              child: content,
            ),
          ),
        ],
      ),
    );
  }
}
