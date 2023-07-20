import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class welcomeText extends StatefulWidget {
   welcomeText({super.key});

  @override
  State<welcomeText> createState() => _welcomeTextState();
}

class _welcomeTextState extends State<welcomeText> {
  @override
  Widget build(BuildContext context) { 
    return AnimatedTextKit(
      pause: const Duration(seconds: 10),
      repeatForever: true,
      animatedTexts: [TyperAnimatedText(
        'Добро пожаловать, рад вас снова видеть!',
        textStyle: TextStyle(
          fontSize: 16
        )
    )]);
  }
}