import 'package:flutter/material.dart';

class forgotPassword extends StatelessWidget {
  const forgotPassword({super.key});

  final axisEnd = MainAxisAlignment.end;

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                mainAxisAlignment: axisEnd,
                children: [_forgotPasswordText()],
              ),
            );
  }
}

class _forgotPasswordText extends StatelessWidget {
   _forgotPasswordText({
    super.key,
  });

  final forgotColor = Colors.blue.shade700;
  final forgotTextStyle = TextDecoration.underline;
  final String forgotText = 'Забыли пароль?';

  @override
  Widget build(BuildContext context) {
    return Text(forgotText,
      style: TextStyle(
        decoration: forgotTextStyle,
        color: forgotColor
      ),
      );
  }
}