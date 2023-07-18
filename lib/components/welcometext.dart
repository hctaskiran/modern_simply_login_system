import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class welcomeText extends StatefulWidget {
  const welcomeText({super.key});

  @override
  State<welcomeText> createState() => _welcomeTextState();
}

class _welcomeTextState extends State<welcomeText> {
  @override
  Widget build(BuildContext context) {
    return Text('Добро пожаловать, рад вас снова видеть!',
    style: TextStyle(color: Colors.black, fontSize: 16),
    );
  }
}