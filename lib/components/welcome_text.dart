import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';


// These Are The Main Text on The Welcome Screen //

class welcomeText extends StatefulWidget {
  const welcomeText({super.key});

  @override
  State<welcomeText> createState() => _welcomeTextState();
}

class _welcomeTextState extends State<welcomeText> {

  final welcomeColor = Colors.black;
  final double welcomeFontSize = 16;

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      repeatForever: true,
      pause: _durationItems.menuWelcomeDuration,
      animatedTexts: [_animWelcomeBackText()]
    );
  }



  /////////     //              //\\        ///////////////    ///////////////   
  //            //             //  \\       //                 //
  //            //            //||||\\      ///////////////    /////////////// 
  //            //           //      \\                  //                 //
  /////////     /////////   //        \\    //////////////     ///////////////
  


  TypewriterAnimatedText _animWelcomeBackText() {
    return TypewriterAnimatedText('Добро пожаловать, рад вас видеть снова!',
      textStyle: TextStyle(
        color: welcomeColor,
        fontSize: welcomeFontSize,
      ));
  }
}

class _durationItems {
  static const menuWelcomeDuration = Duration(seconds: 10);
}