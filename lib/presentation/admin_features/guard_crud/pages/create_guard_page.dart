import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gracker_app/core/injection/injection_container.dart';
import 'package:gracker_app/presentation/admin_features/guard_crud/create_guard/bloc/create_guard_bloc.dart';
import 'package:gracker_app/presentation/admin_features/guard_crud/create_guard/bloc/create_guard_event.dart';
import 'package:gracker_app/presentation/admin_features/guard_crud/create_guard/bloc/create_guard_state.dart';

class CreateGuardPage extends StatefulWidget {
  const CreateGuardPage({Key key}) : super(key: key);
  @override
  _CreateGuardState createState() => _CreateGuardState();
}

class _CreateGuardState extends State<CreateGuardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cargar Guardia'),
      ),
      body: BlocProvider(
          create: (_) => getIt<Create_Guard_Bloc>(),
          child: mainContent(context)),
    );
  }

  Widget mainContent(BuildContext context) {
    return InputForm();
  }
}

class InputForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _InputForm();
}

class _InputForm extends State<InputForm> {
  final _textControllerName = TextEditingController();
  final _textControllerSurname = TextEditingController();
  final _textControllerEmployeeID = TextEditingController();

  @override
  void dispose() {
    _textControllerName.dispose();
    _textControllerSurname.dispose();
    _textControllerEmployeeID.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    void _guardInfoSubmit() {
      BlocProvider.of<Create_Guard_Bloc>(context).add(CreateGuardEvent.submit(
          name: _textControllerName.text,
          surname: _textControllerSurname.text,
          employeeID: _textControllerEmployeeID.text));
    }

    return BlocListener<Create_Guard_Bloc, CreateGuardState>(
      listener: (context, CreateGuardState state) {
        return state.adminFeaturesFailureOrSuccess.fold(() => null, (either) {
          return either.fold((failure) {
            Scaffold.of(context).showSnackBar(
              const SnackBar(
                content: Text('Error'),
                backgroundColor: Colors.red,
              ),
            );
          },
              (_) => Scaffold.of(context).showSnackBar(const SnackBar(
                    content: Text('Success'),
                    backgroundColor: Colors.green,
                  )));
        });
      },
      child: BlocBuilder<Create_Guard_Bloc, CreateGuardState>(
        builder: (context, CreateGuardState state) {
          return Form(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Nombre'),
                    controller: _textControllerName,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Apellido'),
                    controller: _textControllerSurname,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Legajo'),
                    controller: _textControllerEmployeeID,
                  ),
                  const SizedBox(height: 50, width: 50),
                  RaisedButton(
                    onPressed: state.isSubmitting ? null : _guardInfoSubmit,
                    child: const Text('Cargar Guardia'),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
