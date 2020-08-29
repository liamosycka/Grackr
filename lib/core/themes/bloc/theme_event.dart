import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';
import 'package:gracker_app/core/themes/global_themes.dart';

part 'theme_event.freezed.dart';

@freezed
abstract class ThemeEvent with _$ThemeEvent {
  const factory ThemeEvent.changed({@required AppTheme theme}) = Changed;
}
