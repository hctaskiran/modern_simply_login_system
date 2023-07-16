import 'package:flutter/material.dart';

class gaLoginUI extends StatefulWidget {
  const gaLoginUI({super.key});

  @override
  State<gaLoginUI> createState() => _gaLoginUIState();
}

class _gaLoginUIState extends State<gaLoginUI> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          Expanded(child: gaLoginDivider()),
          orLoginWithText().gaLoginText,
          Expanded(child: gaLoginDivider())
          ],
      ),
    );
  }
}

class orLoginWithText {
  final gaLoginText = Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10.0),
    child: Text('Или войти через', style: TextStyle(color: Colors.blue.shade600)),
  );

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