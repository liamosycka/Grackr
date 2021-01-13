import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gracker_app/core/injection/injection_container.dart';
import 'package:gracker_app/core/routes/router.dart';
import 'package:gracker_app/core/themes/global_themes.dart';
import 'package:gracker_app/core/themes/my_flutter_app_icons.dart';
import 'package:gracker_app/domain/admin_features/entities/employee_preview.dart';
import 'package:gracker_app/presentation/admin_features/admin_employees/bloc/admin_employees_bloc.dart';
import 'package:gracker_app/presentation/admin_features/admin_employees/misc/employee_preview_primitive.dart';
import 'package:gracker_app/presentation/core/pages/widgets/backdrop/backdrop_bar.dart';
import 'package:gracker_app/presentation/core/pages/widgets/backdrop/backdrop_children.dart';
import 'package:gracker_app/presentation/core/pages/widgets/backdrop/backdrop_scaffold.dart';

class AdminEmployeesPage extends StatelessWidget {
  const AdminEmployeesPage({Key key}) : super(key: key);

  static const double employeeCardHeight = 75.0;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AdminEmployeesBloc>(
      create: (context) => getIt<AdminEmployeesBloc>()
        ..add(const AdminEmployeesEvent.getPreviews()),
      child: BackdropScaffold(
        backdropBar: BackdropBar(
          title: 'Administrar empleados',
          leadingIcon: MyFlutterApp.mdi_chevron_left,
          leadingOnTap: () {
            Navigator.of(context).pop();
          },
          actionIcon: Icons.person_add,
          actionOnTap: () async {
            Navigator.of(context).pushNamed(Routes.createEmployee);
          },
        ),
        backdropControllerValue: 0,
        frontPanelTitle: 'Lista de Empleados',
        frontPanelChild: const _EmpleadosList(),
        children: _createChildrenList(),
      ),
    );
  }

  List<BackdropChild> _createChildrenList() {
    return [
      const BackdropTextField(
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
    return BlocBuilder<AdminEmployeesBloc, AdminEmployeesState>(
      builder: (context, state) {
        return state.isLoadingPreviews
            // TODO: Evaluar mejor qué mostrar en caso de no haber nada:
            ? const Center(child: CircularProgressIndicator())
            : state.failureOrPreviews.fold(
                () => const Center(
                  child: Text('Error obteniendo empleados.'),
                ),
                (either) => either.fold(
                  (failure) => const Center(
                    child: Text('No se han encontrado empleados'),
                  ),
                  (previewList) => ListView.builder(
                    itemExtent: AdminEmployeesPage.employeeCardHeight,
                    itemCount: previewList.length,
                    itemBuilder: (context, index) => _EmployeePreviewCard(
                      preview: previewList[index],
                    ),
                  ),
                ),
              );
      },
    );
  }
}

class _EmployeePreviewCard extends StatelessWidget {
  const _EmployeePreviewCard({
    Key key,
    @required this.preview,
  }) : super(key: key);

  final EmployeePreview preview;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final previewPr = EmployeePreviewPrimitive.fromDomain(preview);
    final previewIcon = previewPr.icon.fold(
      () => Icons.close,
      (icon) => icon,
    );
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .pushNamed(Routes.inspectEmployee, arguments: previewPr)
            .then((_) {
          BlocProvider.of<AdminEmployeesBloc>(context, listen: false)
              .add(const AdminEmployeesEvent.getPreviews());
        });
      },
      child: Container(
        //height: 70,
        padding: const EdgeInsets.fromLTRB(5, 0, 5, 10),
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
                        previewPr.fullName,
                        style: const TextStyle(fontSize: FontValues.h3),
                      ),
                      Text(
                        previewPr.employeeId,
                        style: TextStyle(
                            fontSize: FontValues.h4, color: Palette.subtitle),
                      ),
                    ],
                  ),
                ),
                Text(
                  previewPr.permissionLevel,
                  style: TextStyle(
                      fontSize: FontValues.h4, color: Palette.subtitle),
                ),
                Hero(
                  tag: previewPr,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Icon(
                      previewIcon,
                      size: FontValues.h2,
                      color: Palette.subtitle,
                    ),
                  ),
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
