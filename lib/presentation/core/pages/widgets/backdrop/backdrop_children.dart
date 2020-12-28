import 'package:flutter/material.dart';
import 'package:gracker_app/core/themes/global_themes.dart';

abstract class BackdropChild extends Widget {}

class BackdropTextField extends StatefulWidget implements BackdropChild {
  const BackdropTextField({Key key, this.label, this.textEditingController})
      : super(key: key);

  final String label;
  final TextEditingController textEditingController;

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
        fontSize: FontValues.h3,
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
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: colorScheme.onBackground),
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
        labelText: widget.label ?? '',
        labelStyle: TextStyle(
          color: colorScheme.onBackground,
          fontSize: FontValues.h4,
        ),
        filled: true,
        fillColor: Palette.subtitle.withOpacity(0.25),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.zero,
          borderSide: BorderSide.none,
        ),
      ),
      autocorrect: false,
    );
  }
}
