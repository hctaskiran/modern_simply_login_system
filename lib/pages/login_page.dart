import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              
              menuSizedBox(),

              mainMenuLockIcon(), // The Icon on the Top of The Main Page
              
              textSizedBox(), // 25

              welcomeText(), // Text Under The Icon

              textSizedBox(), // 25

              customMailInput(), // Input for Entering E-Mail

              fieldSizedBox(), // 10

              customPasswordField(), // Input for Entering Password

              fieldSizedBox(), // 10

              forgotPassword(), // Click to Recover Forgotten Password

              textSizedBox(), // 25

              signInButton(), // Click to Sign In 

            ],
          ),
        ),
      ),
    );
  }
}
