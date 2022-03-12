part of 'themes_bloc.dart';

@immutable
abstract class ThemesState {
  final bool isDark;

  const ThemesState({this.isDark = false});

  ThemeData get themeData;
}

class ThemesInitial extends ThemesState {
  ThemesInitial() : super(isDark: Preferences.darkMode);

  @override
  ThemeData get themeData => isDark ? AppTheme.darkTheme : AppTheme.lightTheme;
}

class SetThemeState extends ThemesState {
  const SetThemeState({required bool isDark}) : super(isDark: isDark);

  @override
  ThemeData get themeData => isDark ? AppTheme.darkTheme : AppTheme.lightTheme;
}
