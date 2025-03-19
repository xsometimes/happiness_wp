


import 'package:flutter/material.dart';
import 'package:meow/resources/colors.dart';

final lightTheme = ThemeData(
  brightness: Brightness.light,
  splashColor: Colors.transparent,
  useMaterial3: true,
)..addMeowColor(
    AppThemeType.light,
    MeowColors.defaultThemeColor,
  );

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  splashColor: Colors.transparent,
  useMaterial3: true,
)..addMeowColor(
    AppThemeType.dark,
    MeowColors.darkThemeColor,
  );
  

enum AppThemeType { light, dark }

extension ThemeDataExtensions on ThemeData {
  static final Map<AppThemeType, MeowColors> _meowColorMap = {};

  void addMeowColor(AppThemeType type, MeowColors color
  
  ) {
    _meowColorMap[type] = color;
  }

  MeowColors get themeColor {
    return _meowColorMap[MeowThemeSetting.currentMeowThemeType] ?? MeowColors.defaultThemeColor;
  }
}

class MeowThemeSetting {
  const MeowThemeSetting._();
  static AppThemeType currentMeowThemeType = AppThemeType.dark;
}