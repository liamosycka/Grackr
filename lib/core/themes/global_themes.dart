import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

enum AppTheme {
  PurpleLight,
  Guard,
  Admin,
  // PurpleDark,
}

class Palette {
  static Gradient failure = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Hexcolor('D93466'), Hexcolor('ED254E')],
  );
  static Gradient success = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Hexcolor('48E5C2'), Hexcolor('57D89A')],
  );

  static Color subtitle = Hexcolor('696969');
}

ThemeData mapAppTheme(AppTheme appTheme) {
  ColorScheme colorScheme;
  switch (appTheme) {
    case AppTheme.PurpleLight:
      colorScheme = _purpleScheme(Brightness.light);
      break;
    case AppTheme.Guard:
      colorScheme = _guardScheme(Brightness.light);
      break;
    case AppTheme.Admin:
      colorScheme = _adminScheme(Brightness.light);
      break;
    default:
      colorScheme = _guardScheme(Brightness.light);
      break;
  }

  final theme = ThemeData.from(colorScheme: colorScheme);
  final textTheme = theme.textTheme;
  final popupTheme = theme.popupMenuTheme;
  return theme.copyWith(
    iconTheme: IconThemeData(color: colorScheme.secondary),
    primaryColorLight: colorScheme.primary,
    primaryColorDark: colorScheme.primary,
    textTheme: GoogleFonts.varelaRoundTextTheme(),
    // textTheme.apply(fontFamily: 'Abingdon'),
    cursorColor: colorScheme.primary,
    textSelectionColor: colorScheme.primary.withOpacity(0.2),
    textSelectionHandleColor: colorScheme.primary,
    cardColor: colorScheme.onBackground,
  );
}

/*  Flutter is moving from managing colors in ThemeData to ColorScheme
  There now exists a factory that allows you to create a ThemeData from a 
  ColoScheme.

  Interestingly, it seems like the following behaviour happens:
    - Light ColorScheme => ThemeData.primaryColor = ColorScheme.primary
    BUT
    - Dark ColorScheme => ThemeData.primaryColor = ColorScheme.surface
    Why? No idea.
 */

// ColorScheme _greenScheme(Brightness brightness) {
//   final primaryColor = Colors.green[600];
//   final primaryColorDark = Colors.green;
//   final accent = Colors.amber;
//   final accentDark = Colors.amber[400];
//   final primaryVariant = Colors.greenAccent[400];
//   final secondaryVariant = Colors.amberAccent;
//   final background = Colors.white;
//   final backgroundDark = Colors.grey[900];

//   return schemeCreator(
//     primaryColor,
//     primaryColorDark,
//     backgroundDark,
//     background,
//     accentDark,
//     accent,
//     primaryVariant,
//     secondaryVariant,
//     brightness,
//   );
// }

ColorScheme _purpleScheme(Brightness brightness) {
  final primaryColor = Colors.deepPurple[400];
  final primaryColorDark = Colors.grey[200];
  final accent = Colors.deepPurple[800];
  final accentDark = Colors.deepPurple[800];
  final primaryVariant = Colors.deepPurpleAccent[200];
  final secondaryVariant = Colors.deepOrange;
  final background = Colors.white;
  final backgroundDark = Colors.grey[900];
  return schemeCreator(
    primaryColor,
    primaryColorDark,
    backgroundDark,
    background,
    accentDark,
    accent,
    primaryVariant,
    secondaryVariant,
    brightness,
  );
}

ColorScheme _guardScheme(Brightness brightness) {
  final primaryColor = Hexcolor('246EB9'); // Azul
  final primaryColorDark = Hexcolor('246EB9');
  final accent = Hexcolor('246EB9');
  final accentDark = Hexcolor('246EB9');
  final primaryVariant = Hexcolor('246EB9');
  final secondaryVariant = Hexcolor('EFE9ED'); // grey-ish
  final background = Hexcolor('333333'); // Negro
  final backgroundDark = Hexcolor('F7F0F5'); // Blanco
  return schemeCreator(
    primaryColor,
    primaryColorDark,
    backgroundDark,
    background,
    accentDark,
    accent,
    primaryVariant,
    secondaryVariant,
    brightness,
  );
}

ColorScheme _adminScheme(Brightness brightness) {
  final primaryColor = Hexcolor('912765'); // Rojo thingy?
  final primaryColorDark = Hexcolor('912765');
  final accent = Hexcolor('912765');
  final accentDark = Hexcolor('912765');
  final primaryVariant = Hexcolor('912765');
  // final secondaryVariant = Hexcolor('F7F0F5'); // grey-ish
  // final background = Hexcolor('333333'); // Negro
  // final backgroundDark = Hexcolor('EFE9ED'); // Blanco
  final secondaryVariant = Hexcolor('EFE9ED'); // grey-ish
  final background = Hexcolor('333333'); // Negro
  final backgroundDark = Hexcolor('F7F0F5'); // Blanco
  return schemeCreator(
    primaryColor,
    primaryColorDark,
    backgroundDark,
    background,
    accentDark,
    accent,
    primaryVariant,
    secondaryVariant,
    brightness,
  );
}

ColorScheme schemeCreator(
  Color primaryColor,
  Color primaryColorDark,
  Color backgroundDark,
  Color background,
  Color accentDark,
  Color accent,
  Color primaryVariant,
  Color secondaryVariant,
  Brightness brightness,
) {
  final bool isDark = brightness == Brightness.dark;
  final scheme = ColorScheme(
    // Read comment above
    primary: isDark ? primaryColorDark : primaryColor,
    surface: isDark ? primaryColorDark : primaryColor,
    onPrimary: isDark ? backgroundDark : background,
    onSurface: isDark ? backgroundDark : background,
    //
    secondary: isDark ? accentDark : accent,
    onSecondary: isDark ? backgroundDark : background,
    // Not Used in the ThemeData factory
    primaryVariant: primaryVariant,
    secondaryVariant: secondaryVariant,

    background: isDark ? backgroundDark : background,
    onBackground: isDark ? background : backgroundDark,
    error: Hexcolor('ED254E'),
    onError: Colors.white,
    brightness: brightness,
  );
  return scheme;
}
