import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gracker_app/core/value_transformers.dart';
import 'package:gracker_app/presentation/admin_features/create_employee/bloc/create_guard_bloc.dart';
import 'package:gracker_app/presentation/admin_features/create_employee/bloc/create_guard_state.dart';
import 'package:gracker_app/presentation/admin_features/create_employee/pages/create_employee_page.dart';
import 'package:gracker_app/presentation/core/blocs/auth_bloc.dart';
import 'package:gracker_app/presentation/core/pages/widgets/backdrop/front_panel.dart';
import 'package:gracker_app/presentation/core/pages/widgets/front_panel_data_row.dart';

class CreateGuardFrontPanel extends StatelessWidget {
  const CreateGuardFrontPanel({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateEmployeeBloc, CreateEmployeeState>(
      builder: (context, state) {
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FrontPanelDataRow(
                title: 'Nombre de Usuario',
                content: Text(
                  (state.surname.isValid() && state.employeeID.isValid())
                      ? transformIntoUsername(
                          state.surname.getOrCrash(),
                          state.employeeID.getOrCrash(),
                        ).fold(
                          (f) => 'Usuario inválido',
                          (u) => u.value.fold(
                            (f) => 'Usuario inválido',
                            (username) => username,
                          ),
                        )
                      : CreateEmployeePage.uninitializedString,
                ),
              ),
              FrontPanelDataRow(
                title: 'Contraseña',
                content: Text(
                  (state.surname.isValid())
                      ? transformIntoPassword(
                          state.surname.getOrCrash(),
                        ).fold(
                          (f) => 'Contraseña inválida',
                          (p) => p.value.fold(
                            (f) => 'Contraseña inválida',
                            (password) => password,
                          ),
                        )
                      : CreateEmployeePage.uninitializedString,
                ),
              ),
              FrontPanelDataRow(
                title: 'Legajo',
                content: Text(
                  state.employeeID.value.fold(
                    (failure) => CreateEmployeePage.uninitializedString,
                    (content) => content,
                  ),
                ),
              ),
              // TODO: Crear selección de rol, o crear una constante en algun
              // TODO: lugar para no tener el rol hard-coded
              const FrontPanelDataRow(
                title: 'Rol',
                content: Text('Guardia'),
              ),
              const FrontPanelDivider(),
              const FrontPanelSection(title: 'Información adicional'),
              FrontPanelDataRow(
                title: 'Fecha de creación',
                content: Text(
                  '${DateTime.now().day.toString().padLeft(2, '0')} / ${DateTime.now().month.toString().padLeft(2, '0')} / ${DateTime.now().year}',
                ),
              ),
              const FrontPanelDataRow(
                title: 'Hora de creación',
                content: _TimeDisplay(),
              ),
              FrontPanelDataRow(
                title: 'Creado por',
                content: Text(
                  BlocProvider.of<AuthBloc>(context).state.maybeMap(
                        orElse: () => CreateEmployeePage.uninitializedString,
                        authenticated: (s) => s.username.value.fold(
                          (f) => CreateEmployeePage.uninitializedString,
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
