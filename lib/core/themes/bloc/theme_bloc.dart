import 'dart:async';

import 'package:gracker_app/core/themes/bloc/theme_event.dart';
import 'package:gracker_app/core/themes/bloc/theme_state.dart';
import 'package:gracker_app/core/themes/global_themes.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class ThemeBloc extends HydratedBloc<ThemeEvent, ThemeState> {
  ThemeBloc()
      : super(
          ThemeState(
            themeData: mapAppTheme(AppTheme.Guard),
            appTheme: AppTheme.Guard,
          ),
        );

  @override
  Stream<ThemeState> mapEventToState(
    ThemeEvent event,
  ) async* {
    yield* event.map(
      changed: (event) async* {
        yield ThemeState(
            themeData: mapAppTheme(event.theme), appTheme: event.theme);
      },
    );
  }

  @override
  ThemeState fromJson(Map<String, dynamic> json) {
    final themeIndex = json['themeIndex'] as int;
    return ThemeState(
      themeData: mapAppTheme(AppTheme.values[themeIndex]),
      appTheme: AppTheme.values[themeIndex],
    );
  }

  @override
  Map<String, int> toJson(ThemeState state) {
    final themeIndex = AppTheme.values.indexOf(state.appTheme);
    return {'themeIndex': themeIndex};
  }
}
