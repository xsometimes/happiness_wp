import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:meow/resources/res_export.dart';

class Agreements extends StatefulWidget {
  const Agreements({
    // 修改 onChecked 为接受 bool 类型参数的函数
    this.onChecked,
    super.key
  });

  // 定义一个接受 bool 类型参数的回调函数
  final void Function(bool value)? onChecked;

  @override
  State<Agreements> createState() => _AgreementsState();
}

class _AgreementsState extends State<Agreements> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // 设置圆角半径
            ),
          value: _isChecked,
          onChanged: (value) {
            setState(() {
              _isChecked = value ?? false;
            });
            // 当复选框状态改变时，调用回调函数并传递新的状态
            widget.onChecked?.call(_isChecked);
          },
        ),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: MeowFontStyles.black12,
            children: [
              const TextSpan(text: '我已阅读并同意'),
              TextSpan(
                text: '《用户服务协议》',
                style: MeowFontStyles.primaryYellow12,
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    // Handle user agreement
                  },
              ),
              const TextSpan(text: '和'),
              TextSpan(
                text: '《隐私政策》',
                style: MeowFontStyles.primaryYellow12,
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    // Handle privacy policy
                  },
              ),
            ],
          ),
        ),
      ],
    );
  }
}