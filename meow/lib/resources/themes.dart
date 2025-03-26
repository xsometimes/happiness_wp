


import 'package:flutter/material.dart';
import 'package:meow/resources/colors.dart';

final lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    primary: MeowColors.primaryColor, // 重写主要颜色
    // secondary: Colors.green, // 重写次要颜色
    // surface: Colors.grey[100]!, // 重写表面颜色
    // onPrimary: Colors.white, // 重写主要颜色上的文本颜色
    // onSecondary: Colors.white, // 重写次要颜色上的文本颜色
    // onSurface: Colors.black, // 重写表面颜色上的文本颜色
    
  ),
  splashColor: Colors.transparent,
  useMaterial3: true,
);


final darkTheme = ThemeData(
  brightness: Brightness.dark,
  splashColor: Colors.transparent,
  useMaterial3: true,
);
  

enum AppThemeType { light, dark }

// extension ThemeDataExtensions on ThemeData {
//   static final Map<AppThemeType, MeowColors> _meowColorMap = {};

//   void addMeowColor(AppThemeType type, MeowColors color
  
//   ) {
//     _meowColorMap[type] = color;
//   }

//   MeowColors get themeColor {
//     return _meowColorMap[MeowThemeSetting.currentMeowThemeType] ?? MeowColors.defaultThemeColor;
//   }
// }

// class MeowThemeSetting {
//   const MeowThemeSetting._();
//   static AppThemeType currentMeowThemeType = AppThemeType.dark;
// }