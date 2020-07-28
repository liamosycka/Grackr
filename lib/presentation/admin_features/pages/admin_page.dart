import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gracker_app/presentation/core/routes/router.gr.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({Key key}) : super(key: key);
  @override
  _AdminPageState createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(height: 500, width: 500, color: Colors.deepPurple),
        RaisedButton(
          onPressed: () => ExtendedNavigator.of(context).pushCreateGuardPage(),
          child: const Text("Crear Guardia"),
        )
      ],
    );
  }
}
