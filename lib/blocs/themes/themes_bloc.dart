import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'package:maps_app/preferences.dart';
import 'package:maps_app/themes/theme.dart';

part 'themes_event.dart';
part 'themes_state.dart';

class ThemesBloc extends Bloc<ThemesEvent, ThemesState> {
  ThemesBloc() : super(ThemesInitial()) {
    on<SetTheme>((event, emit) {
      emit(SetThemeState(isDark: event.isDark));
    });
  }
}
