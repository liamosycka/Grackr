import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gracker_app/core/themes/bloc/theme_bloc.dart';
import 'package:gracker_app/core/themes/bloc/theme_event.dart';
import 'package:gracker_app/core/themes/global_themes.dart';
import 'package:gracker_app/domain/authentication/value_objects.dart';
import 'package:gracker_app/presentation/authentication/bloc/login_bloc.dart';
import 'package:gracker_app/presentation/authentication/bloc/login_event.dart';
import 'package:gracker_app/presentation/authentication/bloc/login_state.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    Key key,
  }) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  TextEditingController _textControllerUser;
  TextEditingController _textControllerPass;
  int _currentPermissions;

  @override
  void initState() {
    super.initState();
    _textControllerUser = TextEditingController();
    _textControllerPass = TextEditingController();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // TODO obtener el nviel de permisos actual de una forma más... mejor :)
    _currentPermissions =
        BlocProvider.of<LoginBloc>(context).state.permissions.getOrCrash();
  }

  @override
  void dispose() {
    _textControllerUser.dispose();
    _textControllerPass.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final colorScheme = Theme.of(context).colorScheme;
    void _loginSubmit() {
      BlocProvider.of<LoginBloc>(context).add(
        LoginEvent.submittedLogin(
          username: _textControllerUser.text,
          plainPassword: _textControllerPass.text,
          permissions: _currentPermissions,
        ),
      );
    }

    void _permissionSwitchGuardia() {
      setState(() {
        _currentPermissions = PermissionLevel.guard;
        context.bloc<LoginBloc>().add(
            LoginEvent.permissionsChanged(permissions: _currentPermissions));

        context
            .bloc<ThemeBloc>()
            .add(const ThemeEvent.changed(theme: AppTheme.Guard));
      });
    }

    void _permissionSwitchAdmin() {
      setState(() {
        _currentPermissions = PermissionLevel.admin;
        context.bloc<LoginBloc>().add(
            LoginEvent.permissionsChanged(permissions: _currentPermissions));

        context
            .bloc<ThemeBloc>()
            .add(const ThemeEvent.changed(theme: AppTheme.Admin));
      });
    }

    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, LoginState state) {
        return Form(
          autovalidate: state.showErrorMessages,
          child: Column(
            children: [
              _CustomTextLoginField(
                isUsername: true,
                textControllerUser: _textControllerUser,
                label: 'Nombre de Usuario',
              ),
              const Divider(
                color: Colors.transparent,
              ),
              _CustomTextLoginField(
                isUsername: false,
                textControllerUser: _textControllerPass,
                label: 'Contraseña',
              ),
              const Divider(
                color: Colors.transparent,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _IconButton(
                          isPressed:
                              _currentPermissions == PermissionLevel.guard,
                          buttonLabel: 'Guardia',
                          onPressed: state.isSubmitting ||
                                  _currentPermissions == PermissionLevel.guard
                              ? () {}
                              : _permissionSwitchGuardia,
                        ),
                        _IconButton(
                          isPressed:
                              _currentPermissions == PermissionLevel.admin,
                          buttonLabel: 'Admin',
                          onPressed: state.isSubmitting ||
                                  _currentPermissions == PermissionLevel.admin
                              ? () {}
                              : _permissionSwitchAdmin,
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    color: Colors.transparent,
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
                    width: double.infinity,
                    child: _IconButton(
                      isPressed: state.isSubmitting,
                      buttonLabel: 'Ingresar',
                      onPressed: state.isSubmitting ? () {} : _loginSubmit,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

class _IconButton extends StatelessWidget {
  const _IconButton({
    Key key,
    @required this.onPressed,
    @required this.buttonLabel,
    @required this.isPressed,
  }) : super(key: key);

  final void Function() onPressed;
  final String buttonLabel;
  final bool isPressed;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return FlatButton(
      color: isPressed ? colorScheme.onBackground : colorScheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: isPressed
            ? BorderSide(
                color: colorScheme.primary,
                width: 6,
              )
            : BorderSide.none,
      ),
      onPressed: onPressed,
      child: Text(
        buttonLabel,
        style: TextStyle(
          color: isPressed ? colorScheme.primary : colorScheme.onBackground,
          fontSize: 18,
        ),
      ),
    );
  }
}

class _CustomTextLoginField extends StatefulWidget {
  const _CustomTextLoginField({
    Key key,
    @required TextEditingController textControllerUser,
    @required this.label,
    @required this.isUsername,
  })  : _textControllerUser = textControllerUser,
        super(key: key);

  final TextEditingController _textControllerUser;
  final String label;
  final bool isUsername;

  @override
  __CustomTextLoginFieldState createState() => __CustomTextLoginFieldState();
}

class __CustomTextLoginFieldState extends State<_CustomTextLoginField> {
  bool showPassword;

  @override
  void initState() {
    super.initState();
    showPassword = false;
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return LayoutBuilder(
      builder: (context, constraints) => TextFormField(
        obscureText: !widget.isUsername && !showPassword,
        style: const TextStyle(
          fontSize: 18,
        ),
        // autofocus: true,
        cursorColor: colorScheme.primary,
        cursorRadius: const Radius.circular(double.infinity),
        decoration: InputDecoration(
          suffixIcon: widget.isUsername
              ? null
              : IconButton(
                  iconSize: 20,
                  color: showPassword
                      ? colorScheme.background
                      : colorScheme.primary,
                  icon: Icon(
                    showPassword ? MdiIcons.eye : MdiIcons.eyeOff,
                  ),
                  onPressed: () {
                    setState(() {
                      showPassword = !showPassword;
                    });
                  },
                ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: colorScheme.primary),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: colorScheme.error),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: colorScheme.error),
          ),
          errorStyle: const TextStyle(fontSize: 14),
          labelText: widget.label,
          labelStyle: TextStyle(
            color: colorScheme.background.withOpacity(0.7),
            fontSize: 18,
          ),
          filled: true,
          fillColor: colorScheme.secondaryVariant,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
        ),
        controller: widget._textControllerUser,
        autocorrect: false,
        onChanged: (newValue) {
          widget.isUsername
              ? context.bloc<LoginBloc>().add(
                    LoginEvent.usernameChanged(newValue),
                  )
              : context.bloc<LoginBloc>().add(
                    LoginEvent.passwordChanged(newValue),
                  );
        },
        validator: (_) {
          return widget.isUsername
              ? context.bloc<LoginBloc>().state.username.value.fold(
                    (failure) => failure.maybeMap(
                      invalidUsername: (_) => 'Nombre de usuario inválido.',
                      orElse: () => null,
                    ),
                    (_) => null,
                  )
              : context.bloc<LoginBloc>().state.password.value.fold(
                    (failure) => failure.maybeMap(
                      shortPassword: (_) => 'Contraseña muy corta.',
                      orElse: () => null,
                    ),
                    (_) => null,
                  );
        },
      ),
    );
  }
}
