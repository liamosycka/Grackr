import 'package:flutter/material.dart';
import 'package:gracker_app/core/themes/global_themes.dart';

class BackdropBar extends StatelessWidget {
  static const double height = 70;
  static const double separationPaddingRatio = 1 / 8;
  const BackdropBar({
    Key key,
    this.appPadding = EdgeInsets.zero,
    this.title = 'No Title',
    this.leadingIcon,
    this.actionIcon,
    this.leadingOnTap,
    this.actionOnTap,
  })  : assert(leadingOnTap == null || leadingIcon != null),
        assert(actionOnTap == null || actionIcon != null),
        super(key: key);

  final EdgeInsets appPadding;
  final String title;
  final IconData leadingIcon;
  final void Function() leadingOnTap;
  final IconData actionIcon;
  final void Function() actionOnTap;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    // final algo = Container();
    return Container(
      padding: appPadding,
      height: height,
      color: colorScheme.background,
      child: SizedBox.expand(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _ButtonContainer(
              isLeading: true,
              separationPaddingRatio: separationPaddingRatio,
              onTap: leadingOnTap,
              child: leadingIcon != null
                  ? Icon(
                      leadingIcon,
                      size: FontValues.h2,
                      color: colorScheme.onBackground,
                    )
                  : null,
            ),
            _StringTitleContainer(title: title),
            _ButtonContainer(
              isLeading: false,
              separationPaddingRatio: separationPaddingRatio,
              onTap: actionOnTap,
              child: actionIcon != null
                  ? Icon(
                      actionIcon,
                      size: FontValues.h1,
                      color: colorScheme.onBackground,
                    )
                  : null,
            ),
          ],
        ),
      ),
    );
  }
}

class _StringTitleContainer extends StatelessWidget {
  const _StringTitleContainer({
    Key key,
    @required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Expanded(
      child: Container(
        // color: Colors.red,
        alignment: Alignment.center,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            title,
            style: TextStyle(
              color: colorScheme.onBackground,
              fontSize: FontValues.h1,
              fontWeight: FontValues.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class _ButtonContainer extends StatelessWidget {
  const _ButtonContainer({
    Key key,
    @required this.separationPaddingRatio,
    @required this.child,
    @required this.isLeading,
    @required this.onTap,
  }) : super(key: key);

  final double separationPaddingRatio;
  final Widget child;
  final bool isLeading;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return InkWell(
            onTap: onTap,
            child: Container(
              // color: Colors.red,
              padding: isLeading
                  ? EdgeInsets.only(
                      right: constraints.maxWidth * separationPaddingRatio,
                    )
                  : EdgeInsets.only(
                      left: constraints.maxWidth * separationPaddingRatio,
                    ),
              // color: Colors.blue,
              alignment:
                  isLeading ? Alignment.centerLeft : Alignment.centerRight,
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: child,
              ),
            ),
          );
        },
      ),
    );
  }
}
