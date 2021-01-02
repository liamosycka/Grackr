import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gracker_app/core/injection/injection_container.dart';
import 'package:gracker_app/core/themes/global_themes.dart';
import 'package:gracker_app/core/themes/my_flutter_app_icons.dart';
import 'package:gracker_app/presentation/admin_features/admin_employees/misc/employee_preview_primitive.dart';
import 'package:gracker_app/presentation/admin_features/inspect_employee/bloc/inspect_employee_bloc.dart';
import 'package:gracker_app/presentation/core/pages/widgets/backdrop/backdrop_bar.dart';
import 'package:gracker_app/presentation/core/pages/widgets/backdrop/backdrop_children.dart';
import 'package:gracker_app/presentation/core/pages/widgets/backdrop/backdrop_scaffold.dart';
import 'package:gracker_app/presentation/core/pages/widgets/backdrop/front_panel.dart';
import 'package:gracker_app/presentation/core/pages/widgets/front_panel_data_row.dart';

class InspectEmployeePage extends StatelessWidget {
  const InspectEmployeePage({Key key, @required this.preview})
      : super(key: key);

  final EmployeePreviewPrimitive preview;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<InspectEmployeeBloc>(
      create: (context) => getIt<InspectEmployeeBloc>()
        ..add(InspectEmployeeEvent.initialize(employeeId: preview.employeeId)),
      child: _Page(preview: preview),
    );
  }
}

class _Page extends StatefulWidget {
  const _Page({Key key, @required this.preview}) : super(key: key);

  final EmployeePreviewPrimitive preview;

  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<_Page> with SingleTickerProviderStateMixin {
  AnimationController backdropController;
  bool isPanelVisible;

  @override
  void initState() {
    super.initState();
    backdropController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
      value: 1,
    );

    isPanelVisible = true;
  }

  @override
  void dispose() {
    backdropController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<InspectEmployeeBloc, InspectEmployeeState>(
      listenWhen: (previous, current) =>
          previous.failureOrSuccess != current.failureOrSuccess,
      listener: (context, state) {
        state.failureOrSuccess.fold(
          () {},
          (either) {
            // TODO: Manejar errores especificamente
            either.fold(
              (failure) {
                FlushbarHelper.createError(message: 'Error eliminando usuario.')
                    .show(context);
              },
              (r) {
                FlushbarHelper.createInformation(message: 'Usuario eliminado')
                    .show(context)
                    .then((_) => Navigator.of(context).maybePop());
              },
            );
          },
        );
      },
      builder: (context, state) {
        final bloc = BlocProvider.of<InspectEmployeeBloc>(context);
        return BackdropScaffold(
          backdropBar: BackdropBar(
            title: 'Información',
            leadingIcon: MyFlutterApp.mdi_chevron_left,
            leadingOnTap: () {
              Navigator.of(context).pop();
            },
            actionIcon: Icons.settings,
            actionOnTap: () async {
              backdropController.fling(velocity: isPanelVisible ? -1.0 : 1.0);
              isPanelVisible = !isPanelVisible;
            },
          ),
          backdropController: backdropController,
          frontPanelTitle: 'Datos de Usuario',
          frontPanelChild: _EmployeeData(preview: widget.preview, state: state),
          children: [
            BackdropExpandedButton(
              title: 'Editar',
              icon: Icons.edit_outlined,
              onTap: () {},
            ),
            BackdropExpandedButton(
              title: 'Eliminar',
              icon: Icons.delete_forever,
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => _Dialog(
                    fullName: widget.preview.fullName,
                    bloc: bloc,
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }

  // List<BackdropChild> _createChildrenList() {
  //   return  [
  //     BackdropExpandedButton(
  //       title: 'Editar',
  //       icon: Icons.edit_outlined,
  //       onTap: () {},
  //     ),
  //     BackdropExpandedButton(
  //       title: 'Eliminar',
  //       icon: Icons.delete_forever,
  //       onTap: () {
  //         showDialog(
  //           context: context,
  //           builder: (context) => _Dialog(fullName: widget.preview.fullName),
  //         );
  //       },
  //     ),
  //   ];
  // }
}

class _Dialog extends StatelessWidget {
  const _Dialog({
    Key key,
    @required this.fullName,
    @required this.bloc,
  }) : super(key: key);

  final String fullName;
  final InspectEmployeeBloc bloc;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return AlertDialog(
      title: Center(
        child: Text(
          '¿Seguro que quiere eliminar a $fullName?',
          textAlign: TextAlign.center,
        ),
      ),
      content: Text(
        'Esta acción no puede ser revertida.',
        textAlign: TextAlign.center,
        style: TextStyle(color: colorScheme.background),
      ),
      backgroundColor: colorScheme.onBackground,
      titleTextStyle: TextStyle(
        color: colorScheme.background,
        fontWeight: FontValues.bold,
        fontSize: FontValues.h3,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      actions: [
        FlatButton(
          onPressed: () {
            Navigator.of(context).maybePop();
          },
          child: Text(
            'No',
            style: TextStyle(
              color: colorScheme.primary,
              fontWeight: FontValues.bold,
              fontSize: FontValues.h4,
            ),
          ),
        ),
        FlatButton(
          onPressed: () {
            Navigator.of(context).maybePop();
            bloc.add(const InspectEmployeeEvent.delete());
          },
          child: Text(
            'Si',
            style: TextStyle(
              color: colorScheme.primary,
              fontWeight: FontValues.bold,
              fontSize: FontValues.h4,
            ),
          ),
        ),
      ],
    );
  }
}

class _EmployeeData extends StatelessWidget {
  const _EmployeeData({
    Key key,
    @required this.preview,
    @required this.state,
  }) : super(key: key);

  final EmployeePreviewPrimitive preview;
  final InspectEmployeeState state;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 10),
            alignment: Alignment.center,
            width: double.infinity,
            child: Hero(
              tag: preview,
              child: Icon(
                preview.icon.fold(
                  () => Icons.close,
                  (icon) => icon,
                ),
                size: 70,
                color: Palette.subtitle,
              ),
            ),
          ),
          Center(
            child: Text(
              preview.fullName,
              style: const TextStyle(
                fontSize: FontValues.h1,
                fontWeight: FontValues.bold,
              ),
            ),
          ),
          const Divider(),
          FrontPanelDataRow(
            title: 'Nombre de Usuario',
            content: Text(state.username.value.fold((_) => '', (user) => user)),
          ),
          FrontPanelDataRow(
            title: 'Rol',
            content: Text(preview.permissionLevel),
          ),
          const FrontPanelDivider(),
          FrontPanelDataRow(
            title: 'Fecha de Creación',
            content: Text(state.creationDateTime.fold(() => 'Error',
                (date) => '${date.day} / ${date.month} / ${date.year}')),
          ),
          FrontPanelDataRow(
            title: 'Hora de Creación',
            content: Text(state.creationDateTime.fold(
                () => 'Error', (date) => '${date.hour} : ${date.minute}')),
          ),
          FrontPanelDataRow(
            title: 'Creado por',
            content: Text(
                state.creatorUsername.value.fold((_) => '', (user) => user)),
          ),
          const FrontPanelDivider(),
          const FrontPanelTitle(title: 'Reportes Recientes'),
          const Divider(
            color: Colors.transparent,
          ),
          const Center(child: CircularProgressIndicator()),
        ],
      ),
    );
  }
}
