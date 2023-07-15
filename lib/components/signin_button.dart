import 'package:flutter/material.dart';

class signInButton extends StatelessWidget {
  signInButton({super.key});

  final signInColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      margin: EdgeInsets.symmetric(horizontal: 25),
      decoration: BoxDecoration(
        color: signInColor,
        borderRadius: BorderRadius.circular(8)
        ),
      child: Center(
        child: _signInText(),
      ),
    );
  }
}

class _signInText extends StatelessWidget {
  const _signInText({
    super.key,
  });

  final String signInRu= 'Вход';
  final signInColor = Colors.white;
  final double signInFontSize = 18;
  final signInFontWeight = FontWeight.bold;


  @override
  Widget build(BuildContext context) {
    return Text(signInRu, 
    style: TextStyle(
      color: signInColor, 
      fontSize: signInFontSize, 
      fontWeight: signInFontWeight),
    );
  }
}
