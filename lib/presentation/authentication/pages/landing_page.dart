import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gracker_app/injection/injection_container.dart';
import 'package:gracker_app/presentation/authentication/bloc/login_bloc.dart';
import 'package:gracker_app/presentation/authentication/bloc/login_state.dart';
import 'package:gracker_app/presentation/authentication/bloc/login_event.dart';
import 'package:gracker_app/presentation/core/routes/router.gr.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key key}) : super(key: key);

  @override
  _LandingHome createState() => _LandingHome();
}

class _LandingHome extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: BlocProvider(
        create: (_) => getIt<Login_Bloc>(),
        //return LoginBloc(authBloc: BlocProvider.of<AuthBloc>(context), loginState: Provider.of<LoginStateRepo>(context, listen: false));
        //return LoginBloc(authBloc: BlocProvider.of<AuthBloc>(context));

        child: mainContent(context),
      ),
    );
  }

  Widget mainContent(BuildContext context) {
    return Stack(
      children: <Widget>[landingBackground(), LoginForm()],
    );
  }

  Widget landingBackground() {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://i.pinimg.com/originals/d0/9e/b0/d09eb0166a350b5aabda3395e9f786d4.jpg"),
              fit: BoxFit.cover)),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginForm();
}

class _LoginForm extends State<LoginForm> {
  final _textControllerUser = TextEditingController();
  final _textControllerPass = TextEditingController();
  bool _adminCheck = false;

  @override
  void dispose() {
    _textControllerUser.dispose();
    _textControllerPass.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    void _loginSubmit() {
      BlocProvider.of<Login_Bloc>(context).add(LoginEvent.submit(
          username: _textControllerUser.text,
          plainPassword: _textControllerPass.text,
          adminCheck: _adminCheck));
    }

    void _adminSwitch(bool newValue) {
      setState(() {
        _adminCheck = newValue;
      });
    }

    return BlocListener<Login_Bloc, LoginState>(
      listener: (context, LoginState state) {
        return state.authFailrueOrSuccess.fold(() => null, (either) {
          return either.fold((failure) {
            Scaffold.of(context).showSnackBar(
              SnackBar(
                  content: const Text('Error'), backgroundColor: Colors.red),
            );
          }, (_) async {
            Scaffold.of(context).showSnackBar(
              SnackBar(
                  content: const Text('Success'),
                  backgroundColor: Colors.green),
            );
            await Future.delayed(const Duration(seconds: 3));
            //TODO Ver mejor forma de diferenciar si se loggeo como admin/guardia
            //TODO usar algun evento de authenticatedAdmin/authenticatedGuard ??
            if (_adminCheck) {
              ExtendedNavigator.of(context).pushAdminPage();
            } else {
              ExtendedNavigator.of(context).pushTestPage();
            }
          });
        });
      },
      child: BlocBuilder<Login_Bloc, LoginState>(
        builder: (context, LoginState state) {
          return Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Username'),
                  controller: _textControllerUser,
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: 'Password'),
                  controller: _textControllerPass,
                  obscureText: true,
                ),
                RaisedButton(
                  onPressed: state.isSubmitting ? null : _loginSubmit,
                  child: const Text('Login'),
                ),
                Switch(
                  value: _adminCheck,
                  onChanged: state.isSubmitting ? null : _adminSwitch,
                  activeColor: Colors.blue,
                ),
                Container(
                    child: state.isSubmitting
                        ? const CircularProgressIndicator()
                        : null),
              ],
            ),
          );
        },
      ),
    );
  }
}
