import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test'),
        actions: [
          IconButton(
            icon: const Icon(Icons.ac_unit),
            onPressed: () {
              pageController.animateToPage(1,
                  duration: const Duration(seconds: 1), curve: Curves.easeIn);
            },
          ),
        ],
      ),
      body: Center(
        child: Container(
          color: Colors.blue,
          height: 80,
          width: 120,
          child: FlatButton(
            onPressed: () async {
              // grapi.User_Remote_GrAPI.test();
              // getIt<IUserRemoteDataSource>().getUsers();
              String str;
              try {
                str = 'No hubo excepcion :(';
              } on Exception {
                str = 'Hubo excepcion :)';
              }
              print(str);
            },
            child: Text('PRUEBAME JAJAJA'),
          ),
        ),
      ),
    );
  }
}
