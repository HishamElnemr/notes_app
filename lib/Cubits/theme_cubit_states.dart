import 'package:flutter/material.dart';

class ThemeCubitStates {}

class ThemeLightState extends ThemeCubitStates {
  final ThemeMode themeMode = ThemeMode.light;
}

class ThemeDarkState extends ThemeCubitStates {
  final ThemeMode themeMode = ThemeMode.dark;
}
