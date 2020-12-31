import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gracker_app/core/injection/injection_container.dart';
import 'package:gracker_app/core/themes/my_flutter_app_icons.dart';
import 'package:gracker_app/presentation/admin_features/create_guard/bloc/create_guard_bloc.dart';
import 'package:gracker_app/presentation/admin_features/create_guard/bloc/create_guard_event.dart';
import 'package:gracker_app/presentation/admin_features/create_guard/bloc/create_guard_state.dart';
import 'package:gracker_app/presentation/admin_features/create_guard/pages/widgets/front_action_widgets.dart';
import 'package:gracker_app/presentation/admin_features/create_guard/pages/widgets/front_panel_widgets.dart';
import 'package:gracker_app/presentation/core/blocs/auth_bloc.dart';
import 'package:gracker_app/presentation/core/pages/widgets/backdrop/backdrop_bar.dart';
import 'package:gracker_app/presentation/core/pages/widgets/backdrop/backdrop_children.dart';
import 'package:gracker_app/presentation/core/pages/widgets/backdrop/backdrop_scaffold.dart';

class CrearEmpleadoPage extends StatefulWidget {
  const CrearEmpleadoPage({Key key}) : super(key: key);

  static const uninitializedString = '---';

  @override
  _CrearEmpleadoPageState createState() => _CrearEmpleadoPageState();
}

class _CrearEmpleadoPageState extends State<CrearEmpleadoPage> {
  TextEditingController textControllerNombre;
  TextEditingController textControllerApellido;
  TextEditingController textControllerLegajo;
  bool miBool;

  @override
  void initState() {
    super.initState();
    miBool = false;
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
    return BlocProvider<CreateGuardBloc>(
      create: (context) => getIt<CreateGuardBloc>()
        ..add(
          CreateGuardEvent.initialize(
            currentUser: BlocProvider.of<AuthBloc>(context).state.maybeMap(
                  orElse: () => CrearEmpleadoPage.uninitializedString,
                  authenticated: (s) => s.username.value.fold(
                    (f) => CrearEmpleadoPage.uninitializedString,
                    (username) => username,
                  ),
                ),
          ),
        ),
      child: BlocConsumer<CreateGuardBloc, CreateGuardState>(
        listenWhen: (previous, current) =>
            previous.adminFeaturesFailureOrSuccess !=
            current.adminFeaturesFailureOrSuccess,
        listener: (context, state) {
          state.adminFeaturesFailureOrSuccess.fold(
            () {},
            (either) {
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
              BlocProvider.of<CreateGuardBloc>(context).add(
                CreateGuardEvent.employeePermissionsChanged(
                    permissions: miBool ? 1 : 0),
              );
              miBool = !miBool;
              //Navigator.of(context).maybePop();
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
          BlocProvider.of<CreateGuardBloc>(context)
              .add(CreateGuardEvent.nameChanged(name: newValue));
        },
      ),
      BackdropTextField(
        textEditingController: textControllerApellido,
        label: 'Apellido',
        onChanged: (newValue, controller) {
          BlocProvider.of<CreateGuardBloc>(context)
              .add(CreateGuardEvent.surnameChanged(surname: newValue));
        },
      ),
      BackdropTextField(
        textEditingController: textControllerLegajo,
        label: 'Legajo',
        onChanged: (newValue, controller) {
          BlocProvider.of<CreateGuardBloc>(context)
              .add(CreateGuardEvent.idChanged(id: newValue));
        },
      ),
    ];
  }
}
