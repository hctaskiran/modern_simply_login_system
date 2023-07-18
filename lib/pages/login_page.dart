import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modern_simply_login_system/components/icons.dart';
import 'package:modern_simply_login_system/components/signinbutton.dart';
import 'package:modern_simply_login_system/components/square.dart';
import 'package:modern_simply_login_system/components/textfields.dart';
import 'package:modern_simply_login_system/components/welcometext.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final mailController = TextEditingController();

  final passwordController = TextEditingController();

  void signUserIn() async {

    showDialog(context: context, builder:(context) { // loading
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
  );

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: mailController.text, 
      password: passwordController.text);

      // pop loading
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      // pop loading
      Navigator.pop(context);

      // wrong mail
      if (e.code == 'user-not-found') {     
        wrongEmailMessage();
      } 
      
      // wrong passwd
      else if (e.code =='wrong-password') {
        wrongPasswordMessage();
      }
    }
  }

  // wrong mail
  void wrongEmailMessage() {
    showDialog(
      context: context, 
      builder: (context) {
        return const AlertDialog(
          title: Text('Неверная Э-Почта'),
        );
      }
    );
  }

  // wrong pass
  void wrongPasswordMessage() {
    showDialog(
      context: context, 
      builder: (context) {
        return const AlertDialog(
          title: Text('Неверный Пароль'),
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
        
                const SizedBox(height: 50),
        
                const welcomeLogo(),
        
                const SizedBox(height: 50),
        
                welcomeText(),
        
                const SizedBox(height: 25),
        
                MenuTextField(
                  controller: mailController, 
                  labelText: 'Э-Почта', 
                  hintText: 'Введите электронную почту', 
                  obscureText: false,
                  prefixIcon: Icon(Icons.mail, color: Colors.grey.shade800),
                  ),
        
                const SizedBox(height: 10),
        
                MenuTextField(
                  controller: passwordController, 
                  labelText: 'Пароль', 
                  hintText: 'Введите пароль', 
                  obscureText: true,
                  prefixIcon: Icon(Icons.lock, color: Colors.grey.shade800),
                ),
        
                const SizedBox(height: 10),
        
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [                  
                      Text(
                        'Забыли пароль?',
                        style: TextStyle(color: Colors.blue.shade700, decoration: TextDecoration.underline),
                      ),
                    ],
                  ),
                ),
                
                const SizedBox(height: 25),
        
                SignInButton(onTap: signUserIn),
        
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
                    Text('У вас аккаунта нет?'),
                    const SizedBox(width: 4),
                    Text('Зарегистрируйтесь!', 
                    style: TextStyle(
                      color: Colors.blue.shade700, 
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline
                    )),
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