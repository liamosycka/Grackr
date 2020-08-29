import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gracker_app/core/themes/global_themes.dart';

part 'theme_state.freezed.dart';

@freezed
abstract class ThemeState with _$ThemeState {
  const factory ThemeState({
    @required ThemeData themeData,
    @required AppTheme appTheme,
  }) = _ThemeState;
}
