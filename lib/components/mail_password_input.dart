import 'package:flutter/material.dart';

class customMailInput extends StatelessWidget {
  const customMailInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: _mailTextField(),
           );
  }
}


class _mailTextField extends StatelessWidget {
  _mailTextField({
    super.key, 
  });

  final mailController = TextEditingController();
  bool filledTrue = true;
  final customFillColor = Colors.white;
  final enabBorderSide = BorderSide(color: Colors.amber);
  final focusBorderSide =BorderSide(color: Colors.purple);
  final String _mailHintText = "Введите электронную почту.";
  final String _mailLabelText = "Э-Почта";
  final mailLabelColor = TextStyle(color: Colors.black);


  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(borderSide: enabBorderSide),
        focusedBorder: OutlineInputBorder(borderSide: focusBorderSide),
        fillColor: customFillColor,
        filled: filledTrue,
        labelText: _mailLabelText,
        hintText: _mailHintText,
        labelStyle: mailLabelColor,
      ),
      controller: mailController,
     );
  }
}


//////////////////////////////////////////////////////


class customPasswordField extends StatelessWidget {
  const customPasswordField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: _passwordTextField(),
           );
  }
}


class _passwordTextField extends StatelessWidget {
  _passwordTextField({
    super.key,
  });

  final passwordController = TextEditingController();
  bool filledTrue = true;
  final customFillColor = Colors.white;
  final enabBorderSide = BorderSide(color: Colors.amber);
  final focusBorderSide = BorderSide(color: Colors.purple);
  final String passwordHintText = "Введите пароль.";
  final String passwordLabelText = "Пароль";
  final passwordLabelColor = TextStyle(color: Colors.black);
  
  
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(borderSide: enabBorderSide),
        focusedBorder: OutlineInputBorder(borderSide: focusBorderSide),
        fillColor: customFillColor,
        filled: filledTrue,
        hintText: passwordHintText,
        labelText: passwordLabelText,
        labelStyle: passwordLabelColor
      ),
      obscureText: true,
      obscuringCharacter: '*',
      controller: passwordController,
     );
  }
}