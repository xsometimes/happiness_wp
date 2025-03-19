import 'package:flutter/material.dart';
import 'package:meow/resources/res_export.dart';

class MeowTextfield extends StatefulWidget {
  // final dynamic controller;
  final bool? isPhone;
  final dynamic hintText;
  final bool? isCode;
  final dynamic onChanged;

  // final dynamic onSubmitted;

  const MeowTextfield({
    super.key,
    this.isPhone = false,
    this.isCode = false,
    // this.controller,
    this.hintText,
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

  @override
  void dispose() {
    _phoneController.dispose();
    _codeController.dispose();
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
                const Icon(Icons.arrow_drop_down),
              ],
            ),
          ),
          Gaps.v8,
          Expanded(
            child: TextFormField(
              controller: _phoneController,
              keyboardType: TextInputType.phone,
              decoration: _inputDecoration,
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

  InputDecoration get _inputDecoration {
    return InputDecoration(
      hintText: widget.hintText,
      border: InputBorder.none,
    );
  }
}

// enum hintTextType {
//   phone,
//   code,
// }
