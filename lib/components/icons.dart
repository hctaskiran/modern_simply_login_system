import 'package:flutter/material.dart';

class welcomeLogo extends StatelessWidget {
  const welcomeLogo({super.key, required this.size});

  final double size;

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.tips_and_updates_outlined, 
      size: size);
  }
}

class registerIcon extends StatelessWidget {
  const registerIcon({super.key, required this.size});

  final double size;

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.sentiment_very_satisfied_outlined, size: size,
    );
  }
}