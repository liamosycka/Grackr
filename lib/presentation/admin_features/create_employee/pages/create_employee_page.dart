import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gracker_app/core/injection/injection_container.dart';
import 'package:gracker_app/core/themes/my_flutter_app_icons.dart';
import 'package:gracker_app/presentation/admin_features/create_employee/bloc/create_guard_bloc.dart';
import 'package:gracker_app/presentation/admin_features/create_employee/bloc/create_guard_event.dart';
import 'package:gracker_app/presentation/admin_features/create_employee/bloc/create_guard_state.dart';
import 'package:gracker_app/presentation/admin_features/create_employee/pages/widgets/front_action_widgets.dart';
import 'package:gracker_app/presentation/admin_features/create_employee/pages/widgets/front_panel_widgets.dart';
import 'package:gracker_app/presentation/core/blocs/auth_bloc.dart';
import 'package:gracker_app/presentation/core/pages/widgets/backdrop/backdrop_bar.dart';
import 'package:gracker_app/presentation/core/pages/widgets/backdrop/backdrop_children.dart';
import 'package:gracker_app/presentation/core/pages/widgets/backdrop/backdrop_scaffold.dart';

class CreateEmployeePage extends StatefulWidget {
  const CreateEmployeePage({Key key}) : super(key: key);

  static const uninitializedString = '---';

  @override
  _CreateEmployeePageState createState() => _CreateEmployeePageState();
}

class _CreateEmployeePageState extends State<CreateEmployeePage> {
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
    textControllerNombre.dispose();
    textControllerApellido.dispose();
    textControllerLegajo.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CreateEmployeeBloc>(
      create: (context) => getIt<CreateEmployeeBloc>()
        ..add(
          CreateEmployeeEvent.initialize(
            currentUser: BlocProvider.of<AuthBloc>(context).state.maybeMap(
                  orElse: () => CreateEmployeePage.uninitializedString,
                  authenticated: (s) => s.username.value.fold(
                    (f) => CreateEmployeePage.uninitializedString,
                    (username) => username,
                  ),
                ),
          ),
        ),
      child: BlocConsumer<CreateEmployeeBloc, CreateEmployeeState>(
        listenWhen: (previous, current) =>
            previous.adminFeaturesFailureOrSuccess !=
            current.adminFeaturesFailureOrSuccess,
        listener: (context, state) {
          state.adminFeaturesFailureOrSuccess.fold(
            () {},
            (either) {
              // TODO: Manejar errores especificamente
              final message = either.fold(
                (failure) => failure.maybeMap<String>(
                  orElse: () => 'Failure',
                ),
                (r) => 'Usuario creado',
              );
              FlushbarHelper.createInformation(message: message).show(context);
            },
          );
        },
        builder: (context, state) => BackdropScaffold(
          backdropBar: BackdropBar(
            title: 'Crear empleado',
            leadingIcon: MyFlutterApp.mdi_chevron_left,
            leadingOnTap: () {
              Navigator.of(context).maybePop();
            },
          ),
          backdropControllerValue: 0,
          frontPanelTitle: 'Datos de usuario',
          frontPanelChild: const CreateGuardFrontPanel(),
          frontActionChild: FrontAction(
            currentState: state,
          ),
          children: _backdropChildren(context),
        ),
      ),
    );
  }

  List<BackdropChild> _backdropChildren(BuildContext context) {
    return [
      BackdropTextField(
        textEditingController: textControllerNombre,
        label: 'Nombre',
        onChanged: (newValue, controller) {
          BlocProvider.of<CreateEmployeeBloc>(context)
              .add(CreateEmployeeEvent.nameChanged(name: newValue));
        },
      ),
      BackdropTextField(
        textEditingController: textControllerApellido,
        label: 'Apellido',
        onChanged: (newValue, controller) {
          BlocProvider.of<CreateEmployeeBloc>(context)
              .add(CreateEmployeeEvent.surnameChanged(surname: newValue));
        },
      ),
      BackdropTextField(
        textEditingController: textControllerLegajo,
        label: 'Legajo',
        onChanged: (newValue, controller) {
          BlocProvider.of<CreateEmployeeBloc>(context)
              .add(CreateEmployeeEvent.idChanged(id: newValue));
        },
      ),
    ];
  }
}
