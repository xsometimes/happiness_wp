import 'package:flutter/material.dart';

class MeowColors {
  static const Color primaryColor = Color(0xffFFD028);

  static const Color surface = Color(0xffF5F5F5);
  static const Color inputHintColor = Color(0xff9CA3AF);
}

// class MeowColors {
//   const MeowColors({
//     required this.primaryColor,
//     required this.secondaryColor,
//     required this.primaryTextColor,
//     required this.secondaryTextColor,
//     required this.primaryGradient,
//     required this.bgColor,
//     required this.tabItemNormalColor,
//     required this.tabItemSelectedColor,
//   });

//   static late MeowColors current;

//   final Color primaryColor;
//   final Color secondaryColor;
//   final Color primaryTextColor;
//   final Color secondaryTextColor;

//   final Color bgColor;
//   final Color tabItemNormalColor;
//   final Color tabItemSelectedColor;

//   /// gradient
//   final LinearGradient primaryGradient;


//   static const MeowColors defaultThemeColor = MeowColors(
//     primaryColor: Color(0xFFFFD700),
//     secondaryColor: Color(0xFFFFA5A5),
//     primaryTextColor: Color.fromARGB(255, 62, 62, 70),
//     secondaryTextColor: Color.fromARGB(255, 166, 168, 254),
//     primaryGradient:
//         LinearGradient(colors: [Color(0xFFFFFFFF), Color(0xFFFE6C30)]),
//     bgColor: Color(0xffeeeeee),
//     tabItemNormalColor: Color(0xFFCCCCCC),
//     tabItemSelectedColor: Color(0xFF2D2D2D),
//   );

//   static const darkThemeColor = MeowColors(
//     primaryColor: Colors.black54,
//     secondaryColor: Color.fromARGB(255, 166, 168, 254),
//     primaryTextColor: Color.fromARGB(255, 166, 168, 254),
//     secondaryTextColor: Color.fromARGB(255, 62, 62, 70),
//     primaryGradient:
//         LinearGradient(colors: [Color(0xFFFFFFFF), Color(0xFFFE6C30)]),
//     bgColor: Color(0xff222222),
//     tabItemNormalColor: Color(0xFF2D2D2D),
//     tabItemSelectedColor: Color(0xFFCCCCCC),
//   );

//   // 增加错误处理
//   static MeowColors of(BuildContext context) {
//     final theme = Theme.of(context);
//     // 假设 Theme 类有 themeColor 属性，如果没有，需要根据实际情况修改
//     final appColor = theme.themeColor;

//     current = appColor;
//     return current;
//   }

//   // 提取辅助方法
//   static Color getColorOrDefault(Color? providedColor, Color defaultColor) {
//     return providedColor ?? defaultColor;
//   }

//   static LinearGradient getGradientOrDefault(LinearGradient? providedGradient, LinearGradient defaultGradient) {
//     return providedGradient ?? defaultGradient;
//   }

//   MeowColors copyWith({
//     Color? primaryColor,
//     Color? secondaryColor,
//     Color? primaryTextColor,
//     Color? secondaryTextColor,
//     LinearGradient? primaryGradient,
//     Color? tabItemNormalColor,
//     Color? tabItemSelectedColor,
//     Color? bgColor,
//   }) {
//     return MeowColors(
//       primaryColor: getColorOrDefault(primaryColor, this.primaryColor),
//       secondaryColor: getColorOrDefault(secondaryColor, this.secondaryColor),
//       primaryTextColor: getColorOrDefault(primaryTextColor, this.primaryTextColor),
//       secondaryTextColor: getColorOrDefault(secondaryTextColor, this.secondaryTextColor),
//       primaryGradient: getGradientOrDefault(primaryGradient, this.primaryGradient),
//       tabItemNormalColor: getColorOrDefault(tabItemNormalColor, this.tabItemNormalColor),
//       tabItemSelectedColor: getColorOrDefault(tabItemSelectedColor, this.tabItemSelectedColor),
//       bgColor: getColorOrDefault(bgColor, this.bgColor),
//     );
//   }
// }


/**
 * 
 * 应用场景：
 * of 方法主要用于获取当前的颜色配置，而 copyWith 方法主要用于在现有颜色配置的基础上进行局部修改。
 * 
 * 
 * final currentColors = MeowColors.of(context);
 * 
 * 
 * final newColors = currentColors.copyWith(
 *   primaryColor: Colors.blue,
 * );
 */