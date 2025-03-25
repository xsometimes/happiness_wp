import 'package:flutter/material.dart';
import 'package:meow/resources/res_export.dart';

class MeowTextfield extends StatefulWidget {
  // final dynamic controller;
  final bool? isPhone;
  final String? hintText;
  final bool? isCode;
  final bool? isPwd;
  final dynamic onChanged;

  // final dynamic onSubmitted;

  const MeowTextfield({
    super.key,
    this.isPhone = false,
    this.isCode = false,
    this.isPwd = false,
    // this.controller,
    this.hintText = '',
    this.onChanged, 
    // this.onSubmitted,
    // this.onEditingComplete,
  });

  @override
  State<MeowTextfield> createState() => _MeowTextfieldState();
}

class _MeowTextfieldState extends State<MeowTextfield> {
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _codeController = TextEditingController();
  final TextEditingController _pwdController = TextEditingController();

  String? _phoneValidator(String? value) {
    if (value == null || value.isEmpty) {
      return '请输入手机号码';
    }
    final RegExp phoneRegex = RegExp(r'^1[3-9]\d{9}$');
    if (!phoneRegex.hasMatch(value)) {
      return '请输入有效的11位手机号码';
    }
    return null;
  }

  String? _codeValidator(String? value) {
    if (value == null || value.isEmpty) {
      return '请输入校验码';
    }
    final RegExp codeRegex = RegExp(r'^\d+$');
    if (!codeRegex.hasMatch(value) && value.toString().length != 6) {
      return '校验码不正确';
    }
    return null;
  }

  String? _pwdValidator(String? value) {
    if (value == null || value.isEmpty) {
      return '请输入密码';
    }
    // 优化后的正则表达式
    final RegExp passwordRegex = RegExp(r'^(?=.*[0-9])(?=.*[A-Z])(?=.*[a-z])(?=.*[!@#$%&?*,.])[0-9a-zA-Z!@#$%&?*,.]{8,20}$');
    if (!passwordRegex.hasMatch(value)) {
      return '8-20位，至少包含大、小写字母、数字、特殊符号'; // (!@#\$%&?*,.)
    }
    return null;
  }

  @override
  void dispose() {
    _phoneController.dispose();
    _codeController.dispose();
    _pwdController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.isCode??false) {
      return _codeTextField;
    }
    if (widget.isPhone??false) {
      return _phoneTextField;
    }
    if (widget.isPwd??false) {
      return _pwdTextField;
    }
    return SizedBox();
  }

  Widget get _phoneTextField {
    String selectedCountryCode = '+86';
    return Container(
      decoration: MeowDecorations.textFieldDecoration,
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              // Handle country code selection
            },
            child: Row(
              children: [
                Text(
                  selectedCountryCode,
                  style: const TextStyle(fontSize: 16),
                ),
                SizedBox(
                  width: 24,
                  child: const Icon(Icons.arrow_drop_down),
                ),
              ],
            ),
          ),
          Gaps.v8,
          Expanded(
            child: TextFormField(
              controller: _phoneController,
              keyboardType: TextInputType.phone,
              decoration: _inputDecoration,
              validator: (value) => _phoneValidator(value),
            ),
          ),
        ],
      ),
    );
  }

  Widget get _codeTextField {
    return Container(
      decoration: MeowDecorations.textFieldDecoration,
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              controller: _codeController,
              keyboardType: TextInputType.number,
              decoration: _inputDecoration,
              validator: _codeValidator,
            ),
          ),
          TextButton(
            onPressed: () {
              // Handle get verification code
            },
            child: Text(
              '获取验证码',
              style: MeowFontStyles.primaryYellow12,
            ),
          ),
        ],
      ),
    );
  }

  Widget get _pwdTextField {
    return Container(
      decoration: MeowDecorations.textFieldDecoration,
      child: Row(
        children: [
          Text('密码', style: MeowFontStyles.black14,),
          Gaps.h24,
          Expanded(child: TextFormField(
            controller: _pwdController,
            keyboardType: TextInputType.visiblePassword,
            decoration: _inputDecoration,
            validator: _pwdValidator,
          ),)
        ],
      ),
    );
  }

  InputDecoration get _inputDecoration {
    return InputDecoration(
      hintText: widget.hintText??_hintText,
      border: InputBorder.none,
    );
  }

  String get _hintText {
    if (widget.isPhone??false) {
      return HintTextType.phone.value;
    }
    if (widget.isCode??false) {
      return HintTextType.code.value;
    }
    if (widget.isPwd??false) {
      return HintTextType.pwd.value;
    }
    return '';
  }
}

enum HintTextType {
  phone(value: '请输入手机号码', number: 1),
  code(value: '请输入验证码', number: 2),
  pwd(value: '请输入密码', number: 3);

  final String value;
  final int number;

  const HintTextType({required this.value, required this.number});
}
