import 'package:flutter/material.dart';
import 'package:modern_simply_login_system/components/sized_box.dart';

class googleAppleButton extends StatefulWidget {
  const googleAppleButton({super.key});

  @override
  State<googleAppleButton> createState() => _googleAppleButtonState();
}

class _googleAppleButtonState extends State<googleAppleButton> {

  final centerAlign = MainAxisAlignment.center;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: centerAlign,
      children: [
        customGoogleButton(),
        onWidhtSizedBox(),
        customAppleButton()
      ],
    );
  }
}

class customGoogleButton extends StatelessWidget {
  const customGoogleButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: googleAppleImages().googleImg,
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white
        )),
      );
  }
}

class customAppleButton extends StatelessWidget {
  const customAppleButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: googleAppleImages().appleImg, 
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white
          )),);
  }
}

class googleAppleImages {
  final googleImg = Image.asset('lib/assets/google_logo.png', height: 40);
  final appleImg = Image.asset('lib/assets/apl.png', height: 40);
}