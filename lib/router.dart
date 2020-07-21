import 'package:flutter/material.dart';
import 'file:///D:/Users/LiamOsycka/Documents/Coding/Flutter/gracker_app/lib/presentation/authentication/pages/landing_page.dart';

//import 'features/main_admin/presentation/pages/main_page_admin.dart';
//import 'features/main_guardia/presentation/pages/main_page_guardia.dart';



class Router {

  static const String R_mainHomeGuardia = '/mainHomeGuardia';
  static const String R_mainHomeAdmin = '/mainHomeAdmin';
  static const String R_landing = '/landing';
  static const String R_camera = '/camera';
  static const String R_checkIn = '/checkIn';

  static Route<dynamic> generateRoute(RouteSettings settings){
    final args = settings.arguments; // Elementos pasados por el Navigator.pushNamed()
    Route<dynamic> route;

    route = _errorRoute();
    switch (settings.name){
      /*case R_mainHomeGuardia:
        route = MaterialPageRoute(builder: (_) => MainHomeGuardia());
        break;
      case R_mainHomeAdmin:
        route = MaterialPageRoute(builder: (_) => MainHomeAdmin());
        break;*/
      case R_landing:
        route = MaterialPageRoute(builder: (_) => Landing_Home());
        break;
      case R_camera:
        if(args is Map<String,String>){
          if(args.containsKey('resultRoute')) {
            //route = MaterialPageRoute(builder: (_) => Camera(resultRoute: args.remove('resultRoute'), extraArguments: args));
          }
        }
        break;
      case R_checkIn:
        if(args is Map<String,String>){
          if(args.containsKey('operation') && args.containsKey('imagePath')){
            //route = MaterialPageRoute(builder: (_) => CheckInHome(operation: args.remove('operation'), imagePath: args.remove('imagePath')));
          }
        }
        break;
      default:
        route = _errorRoute();
        break;
    }
    return route;
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        body: Center(
          child: Text("Error de Ruta."),
        ),
      );
    });
  }

}