import 'package:flutter/material.dart';

class MeowTextsTheme extends ThemeExtension<MeowTextsTheme> {
  static const _baseFamily = "Base";

  final TextStyle labelH1;
  final TextStyle labelH2;
  final TextStyle labelTextDefault;

  const MeowTextsTheme._internal(
      {required this.labelH1,
      required this.labelH2,
      required this.labelTextDefault});

  factory MeowTextsTheme.main() => const MeowTextsTheme._internal(
      labelH1: TextStyle(
        fontFamily: _baseFamily,
        fontWeight: FontWeight.w400,
        fontSize: 18,
        height: 1.4,
      ),
      labelH2: TextStyle(
        fontFamily: _baseFamily,
        fontWeight: FontWeight.w300,
        fontSize: 16,
        height: 1.4,
      ),
      labelTextDefault: TextStyle(
        fontFamily: _baseFamily,
        fontWeight: FontWeight.w400,
        fontSize: 16,
        height: 1.2,
      ));

  @override
  ThemeExtension<MeowTextsTheme> copyWith() {
    return MeowTextsTheme._internal(
      labelH1: labelH1,
      labelH2: labelH2,
      labelTextDefault: labelTextDefault,
    );
  }

  @override
  ThemeExtension<MeowTextsTheme> lerp(
          covariant ThemeExtension<MeowTextsTheme>? other, double t) =>
      this;
}


/**
 * TextStyle.lerp：这是 Flutter 提供的一个方法，用于在两个 TextStyle 实例之间进行插值计算。
 * // 获取当前主题
final currentTheme = Theme.of(context).extension<MeowTextsTheme>()!;

// 定义目标主题
final targetTheme = MeowTextsTheme.main();

// 创建一个动画控制器
final animationController = AnimationController(
  vsync: this,
  duration: const Duration(seconds: 1),
);

// 创建一个动画
final animation = Tween<double>(begin: 0, end: 1).animate(animationController);

// 监听动画变化
animation.addListener(() {
  final interpolatedTheme = currentTheme.lerp(targetTheme, animation.value);
  // 使用插值后的主题更新界面
});

// 启动动画
animationController.forward();
 */