import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gracker_app/presentation/core/blocs/auth_bloc.dart';
import 'package:gracker_app/presentation/core/blocs/auth_event.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class TopBar extends StatelessWidget with PreferredSizeWidget {
  final IconButton leadingButton;
  final IconButton actionButton;
  final bool showActionButton;
  final String title;
  const TopBar({
    Key key,
    this.leadingButton,
    this.actionButton,
    @required this.showActionButton,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorSheme = Theme.of(context).colorScheme;
    return LayoutBuilder(
      builder: (context, constraints) => Container(
        padding: EdgeInsets.symmetric(
          horizontal: constraints.maxWidth * 0.07,
          vertical: 5,
        ),
        child: SizedBox.fromSize(
          size: preferredSize,
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: leadingButton ??
                      IconButton(
                        iconSize: 30,
                        icon: Icon(
                          MdiIcons.tune,
                          color: colorSheme.onBackground,
                        ),
                        onPressed: () {},
                      ),
                ),
                Expanded(
                  flex: 8,
                  child: SizedBox.expand(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        title ?? 'Grackr',
                        style: TextStyle(
                          color: colorSheme.onBackground,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Visibility(
                    visible: showActionButton,
                    child: actionButton ??
                        InkWell(
                          onTap: () {
                            BlocProvider.of<AuthBloc>(context)
                                .add(const AuthEvent.loggedOut());
                          },
                          child: FittedBox(
                            alignment: Alignment.centerRight,
                            fit: BoxFit.scaleDown,
                            child: Icon(
                              MdiIcons.shieldAccountOutline,
                              size: 35,
                              color: colorSheme.onBackground,
                            ),
                          ),
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

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
