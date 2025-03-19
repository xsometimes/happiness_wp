import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:meow/resources/res_export.dart';
import 'package:meow/widgets/meow_btn.dart';
import 'package:meow/widgets/meow_form/meow_form.dart';

class LoginByOTP extends StatefulWidget {
  const LoginByOTP({super.key});

  @override
  State<LoginByOTP> createState() => _LoginByOTPState();
}

class _LoginByOTPState extends State<LoginByOTP> {
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _codeController = TextEditingController();
  String selectedCountryCode = '+86';
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _phoneController.dispose();
    _codeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            children: [
              Gaps.v60,
              // Logo
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: MeowColors.defaultThemeColor.primaryColor,
                  shape: BoxShape.circle,
                ),
                child: const Center(
                  child: Text(
                    'logo',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Gaps.v40,

              MeowForm(
                formKey: _formKey,
                child: Column(
                  children: <Widget>[
                    MeowTextfield(
                      hintText: '请输入手机号码',
                      isPhone: true,
                      onChanged: (value) {
                        print(value);
                      },
                    ),

                    Gaps.v20,

                    MeowTextfield(
                      hintText: '请输入验证码',
                      isPhone: true,
                      onChanged: (value) {
                        print(value);
                      },
                    ),
                  ],
                ),
              ),
              // Phone number input
              // Verification code input
              
              Gaps.v40,
              // Login button
              MeowBtn(text: '登录', onPressed: () {
                // Handle login
              }),
              Gaps.v16,
              // Password login link
              TextButton(
                onPressed: () {
                  // Handle password login
                },
                child: Text(
                  '密码登录',
                  style: MeowFontStyles.black14,
                ),
              ),
              const Spacer(),

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
              Gaps.v20,
            ],
          ),
        ),
      ),
    );
  }
}