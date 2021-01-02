import 'package:flutter/material.dart';
import 'package:gracker_app/core/themes/global_themes.dart';

abstract class BackdropChild extends Widget {
  static Color fillColor = Palette.subtitle.withOpacity(0.25);
  static const contentPadding =
      EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0);

  static BorderRadius borderRadius = BorderRadius.circular(10);

  static const fontSize = FontValues.h3;
}

class BackdropTextField extends StatefulWidget implements BackdropChild {
  const BackdropTextField(
      {Key key, this.label, this.textEditingController, this.onChanged})
      : super(key: key);

  final String label;
  final TextEditingController textEditingController;
  final void Function(String, TextEditingController) onChanged;

  @override
  State<StatefulWidget> createState() => _BackdropTextFieldState();
}

class _BackdropTextFieldState extends State<BackdropTextField> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return TextField(
      keyboardType: TextInputType.text,
      controller: widget.textEditingController,
      style: TextStyle(
        color: colorScheme.onBackground,
        fontSize: BackdropChild.fontSize,
      ),
      textAlignVertical: TextAlignVertical.center,
      // autofocus: true,
      cursorColor: colorScheme.onBackground,
      cursorRadius: const Radius.circular(double.infinity),
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.search,
          color: colorScheme.onBackground,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        contentPadding: BackdropChild.contentPadding,
        focusedBorder: OutlineInputBorder(
          borderRadius: BackdropChild.borderRadius,
          borderSide: BorderSide(color: colorScheme.onBackground),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BackdropChild.borderRadius,
          borderSide: BorderSide(color: colorScheme.error),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BackdropChild.borderRadius,
          borderSide: BorderSide(color: colorScheme.error),
        ),
        errorStyle: const TextStyle(fontSize: 14),
        labelText: widget.label ?? '',
        labelStyle: TextStyle(
          color: colorScheme.onBackground,
          fontSize: FontValues.h3,
        ),
        filled: true,
        fillColor: BackdropChild.fillColor,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide.none,
        ),
      ),
      autocorrect: false,
      onChanged: (newValue) {
        widget.onChanged(newValue, widget.textEditingController);
      },
    );
  }
}

class BackdropExpandedButton extends StatelessWidget implements BackdropChild {
  const BackdropExpandedButton({
    Key key,
    @required this.onTap,
    @required this.icon,
    @required this.title,
  }) : super(key: key);

  final void Function() onTap;
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: BackdropChild.fillColor,
        child: Padding(
          padding: BackdropChild.contentPadding,
          child: Row(
            children: [
              Expanded(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    title,
                    style: TextStyle(
                      color: colorScheme.onBackground,
                      fontSize: BackdropChild.fontSize,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: FittedBox(
                  fit: BoxFit.fitHeight,
                  alignment: Alignment.centerRight,
                  child: Icon(
                    icon,
                    size: BackdropChild.fontSize,
                    color: colorScheme.onBackground,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
