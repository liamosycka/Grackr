import 'package:flutter/material.dart';
//import 'package:gracker_app/presentation/admin_features/administracion_empleados/pages/admin_empleados_page.dart';
import 'package:gracker_app/presentation/admin_features/pages/admin_page.dart';

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
      body: Container(
        padding: const EdgeInsets.all(50),
        child: PageView(
          controller: pageController,
          scrollDirection: Axis.horizontal,
          children: const [
            AdminPage(),
            // AdminEmpleadosPage(),
          ],
        ),
      ),
    );
  }
}
