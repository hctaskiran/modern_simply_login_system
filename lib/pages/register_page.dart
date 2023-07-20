import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modern_simply_login_system/components/icons.dart';
import 'package:modern_simply_login_system/components/signinbutton.dart';
import 'package:modern_simply_login_system/components/square.dart';
import 'package:modern_simply_login_system/components/textfields.dart';
import 'package:modern_simply_login_system/components/welcometext.dart';

class RegisterPage extends StatefulWidget {

  final Function()? onTap;
  
  RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  
  final mailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();


  void signUserUp() async {

    showDialog(context: context, builder:(context) { // loading
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
  );


    try { 
      if (passwordController.text == confirmPasswordController.text) {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: mailController.text, 
          password: passwordController.text);
      } else {
        showErrorMessage('text');
      } 
      // pop loading
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      // pop loading
      Navigator.pop(context);

     // show error
     showErrorMessage(e.code);
    }
  }

  // error
  void showErrorMessage(String message) {
    showDialog(
      context: context, 
      builder: (context) {
        return AlertDialog(
          title: Center(
            child: Text(
              message,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        );
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
        
                const SizedBox(height: 25),
        
                const registerIcon(size: 80),
        
                const SizedBox(height: 25),
        
                Text('Присоединяйтесь к нам 1 щёлчком!',
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                const SizedBox(height: 25),
        
                MenuTextField(
                  controller: mailController, 
                  labelText: 'Создайте Э-Почта', 
                  hintText: 'Э-Почта', 
                  obscureText: false,
                  prefixIcon: Icon(Icons.mail, color: Colors.grey.shade800),
                  ),
        
                const SizedBox(height: 10),
        
                MenuTextField(
                  controller: passwordController, 
                  labelText: 'Создайте пароль', 
                  hintText: 'Пароль', 
                  obscureText: true,
                  prefixIcon: Icon(Icons.key, color: Colors.grey.shade800),
                ),
        
                const SizedBox(height: 10),
                
                MenuTextField(
                  controller: confirmPasswordController, 
                  labelText: 'Проверьте пароль', 
                  hintText: 'Пароль', 
                  obscureText: true,
                  prefixIcon: Icon(Icons.key, color: Colors.grey.shade800),
                ),
                
                const SizedBox(height: 25),
        
                SignInUpButton(onTap: signUserUp, text: 'Создать',),
        
                const SizedBox(height: 50),
        
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 2,
                          color: Colors.grey.shade400,
                        ),
                      ),
                
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text('Или войти через'),
                      ),
                
                      Expanded(
                        child: Divider(
                          thickness: 2,
                          color: Colors.grey.shade400,
                        ),
                      ),
                    ],
                  ),
                ),
        
                const SizedBox(height: 50),
        
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SquareTile(imagePath: 'lib/assets/google_logo.png'),
        
                    const SizedBox(width: 25),
                    
                    SquareTile(imagePath: 'lib/assets/apl.png')
                  ],
                ),
        
                const SizedBox(height: 50),
        
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Уже создали аккаунт?'),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: widget.onTap,
                      child: Text('Нажмите для входа!', 
                      style: TextStyle(
                        color: Colors.blue.shade700, 
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline
                      )),
                    ),
                  ],
                )
        
              ],
            ),
          ),
        ),
      )
    );
  }
}