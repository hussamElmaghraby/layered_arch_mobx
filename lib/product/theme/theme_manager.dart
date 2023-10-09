import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeManager extends ChangeNotifier {
  ThemeData _currentTheme = ThemeData.light();

  ThemeData get currentTheme => _currentTheme;

  ThemeDataEnum _themeDataEnum = ThemeDataEnum.DARK;

  void changeTheme() {
    switch (_themeDataEnum) {
      case ThemeDataEnum.DARK:
        _currentTheme = ThemeData.light();
        return;
      case ThemeDataEnum.LIGHT:
        _currentTheme = ThemeData.dark();
        return;
    }
  }
}

enum ThemeDataEnum { DARK, LIGHT }
