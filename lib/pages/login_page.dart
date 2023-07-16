import 'package:flutter/material.dart';
import 'package:modern_simply_login_system/components/g_a_buttons.dart';
import 'package:modern_simply_login_system/components/g_a_login_ui.dart';
import 'package:modern_simply_login_system/components/signin_button.dart';
import 'package:modern_simply_login_system/components/forgot_password.dart';
import 'package:modern_simply_login_system/components/icons.dart';
import 'package:modern_simply_login_system/components/mail_password_input.dart';
import 'package:modern_simply_login_system/components/sized_box.dart';
import 'package:modern_simply_login_system/components/welcome_text.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key,});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              
              elliSizedBox(), // 50

              mainMenuLockIcon(), // The Icon on the Top of The Main Page
              
              ybSizedBox(), // 25

              welcomeText(), // Text Under The Icon

              ybSizedBox(), // 25

              customMailInput(), // Input for Entering E-Mail

              onSizedBox(), // 10

              customPasswordField(), // Input for Entering Password

              onSizedBox(), // 10

              forgotPassword(), // Click to Recover Forgotten Password

              ybSizedBox(), // 25

              signInButton(onTap: () {
                signUserIn();
              }),                 // Click to Sign In 
              
              elliSizedBox(),

              gaLoginUI(),
              
              elliSizedBox(),

              googleAppleButton()
            ],
          ),
        ),
      ),
    );
  }
}
