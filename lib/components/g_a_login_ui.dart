import 'package:flutter/material.dart';

class gaLoginUI extends StatefulWidget {
  const gaLoginUI({super.key});

  @override
  State<gaLoginUI> createState() => _gaLoginUIState();
}

class _gaLoginUIState extends State<gaLoginUI> {

  final orLoginWithText = Text('Или войти через');

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          Expanded(child: gaLoginDivider()),
          orLoginWithText,
          Expanded(child: gaLoginDivider())
          ],
      ),
    );
  }
}

class gaLoginDivider extends StatelessWidget {
  const gaLoginDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 2,
      color: Colors.grey.shade400,
    );
  }
}