part of 'themes_bloc.dart';

@immutable
abstract class ThemesEvent {}

class SetTheme extends ThemesEvent {
  final bool isDark;

  SetTheme({required this.isDark});
}
