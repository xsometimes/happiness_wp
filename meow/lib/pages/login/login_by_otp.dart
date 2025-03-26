import 'package:flutter/material.dart';
import 'package:meow/resources/res_export.dart';
import 'package:meow/widgets/agreement/agreement.dart';
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

  void _onAgreementsCheck(bool value) {
    print('checked==> $value');// Handle agreement check
  }

  @override
  void dispose() {
    _phoneController.dispose();
    _codeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).primaryColor;
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
                  color: primaryColor,
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
                      isPhone: true,
                      onChanged: (value) {
                        print(value);
                      },
                    ),

                    Gaps.v20,

                    MeowTextfield(
                      isCode: true,
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

              Agreements(onChecked: _onAgreementsCheck,),
              Gaps.v20,
            ],
          ),
        ),
      ),
    );
  }
}