import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gracker_app/injection_container.dart';
import 'package:gracker_app/presentation/authentication/bloc/login_bloc.dart';
import 'package:gracker_app/presentation/authentication/bloc/login_state.dart';
import 'package:gracker_app/presentation/authentication/bloc/login_event.dart';

class Landing_Home extends StatefulWidget {
  Landing_Home({Key key}) : super(key: key);

  @override
  _LandingHome createState() => _LandingHome();
}

class _LandingHome extends State<Landing_Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: BlocProvider(
        create: (_) => serviceLocator<Login_Bloc>(),
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
      decoration: BoxDecoration(
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
    _loginSubmit() {
      BlocProvider.of<Login_Bloc>(context).add(LoginEvent.submit(
          username: _textControllerUser.text,
          plainPassword: _textControllerPass.text,
          adminCheck: _adminCheck));
    }

    _adminSwitch(bool newValue) {
      setState(() {
        _adminCheck = newValue;
      });
    }

    return BlocListener<Login_Bloc, LoginState>(
      listener: (context, LoginState state) {
        return state.authFailrueOrSuccess.fold(() => null, (either) {
          return either.fold((failure) {
            return Scaffold.of(context).showSnackBar(
              SnackBar(content: Text('Error'), backgroundColor: Colors.red),
            );
          }, (_) {
            return Scaffold.of(context).showSnackBar(
              SnackBar(content: Text('Success'), backgroundColor: Colors.green),
            );
          });
        });
      },
      child: BlocBuilder<Login_Bloc, LoginState>(
        builder: (context, LoginState state) {
          return Form(
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(labelText: 'Username'),
                  controller: _textControllerUser,
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Password'),
                  controller: _textControllerPass,
                  obscureText: true,
                ),
                RaisedButton(
                  onPressed: state.isSubmitting ? null : _loginSubmit,
                  /*
                  onPressed: state.maybeMap(
                      loading: (s) => null, orElse: () => _loginSubmit),
                  
                     state is! LoginState.loading() ?
                  _loginSubmit : null,*/
                  child: Text('Login'),
                ),
                Switch(
                  value: _adminCheck,
                  onChanged: state.isSubmitting ? null : _adminSwitch,
                  /*
                  onChanged: state.maybeMap(
                      loading: (s) => null, orElse: () => _adminSwitch),
                  /*
                  state is! Login_Loading_State ?
                  _adminSwitch : null,*/ */
                  activeColor: Colors.blue,
                ),
                Container(
                    child:
                        state.isSubmitting ? CircularProgressIndicator() : null
                    /*
                  child: state.maybeMap(
                      loading: (s) => CircularProgressIndicator(),
                      orElse: () => null),*/
                    ),
              ],
            ),
          );
        },
      ),
    );
  }
}
