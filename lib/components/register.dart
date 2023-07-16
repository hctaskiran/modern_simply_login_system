import 'package:flutter/material.dart';
import 'package:modern_simply_login_system/components/sized_box.dart';

class registerNow extends StatelessWidget {
  const registerNow({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('У вас аккаунта нет?', style: TextStyle(color: Colors.black)),
        dortWidhtSizedBox(),
        GestureDetector(
          child: signUp(),
        )
      ],
    );
  }
}

class signUp extends StatelessWidget {
  const signUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text('Зарегистрируйтесь!', 
      style: TextStyle(
        color: Colors.blue.shade600, 
        fontWeight: FontWeight.bold
      ),
    );
  }
}