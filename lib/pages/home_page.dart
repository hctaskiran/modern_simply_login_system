import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        actions: [IconButton(
          onPressed: signUserOut, 
          icon: Icon(Icons.logout_outlined))]),
      body: Center(
        child: Text('УСПЕШНО ВОШЛИ КАК: ' + user.email!,
        style: TextStyle(fontSize: 18),  
      )),
    );
  }
}