// ignore_for_file: use_build_context_synchronously

import 'package:essivi_delivery_drink/components/my_button.dart';
import 'package:essivi_delivery_drink/components/my_textfield.dart';
// import 'package:essivi_delivery_drink/pages/home_page.dart';
import 'package:essivi_delivery_drink/services/auth/auth_service.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //Controleur du text editing
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  //Methode pour vraiment se connecter
  void login() async {
    final _authService = AuthService();

    try {
      await _authService.signInWithEmailAndPassword(
          emailController.text, passwordController.text);
    } catch (e) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(e.toString()),
        ),
      );
    }
  }

  // // login method
  // void login() {
  //   //Naviger vers la page d'accueil
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (context) => HomePage(),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      // backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.lock_open_rounded,
              size: 100,
            ),
            const SizedBox(
              height: 25,
            ),

            //message , slogan de l'application
            Text(
              "Application de livraison de boissons",
              style: TextStyle(
                fontSize: 17,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),

            const SizedBox(
              height: 25,
            ),

            //champ de saisie pour l'email
            MyTextfield(
                controller: emailController,
                hintText: "Email",
                obscureText: false),

            const SizedBox(
              height: 25,
            ),

            //champ de saisie pour le mot de passe
            MyTextfield(
                controller: passwordController,
                hintText: "Mot de passe",
                obscureText: true),

            const SizedBox(
              height: 25,
            ),

            //bouton de login
            MyButton(text: "Se connecter", onTap: login),

            const SizedBox(
              height: 25,
            ),

            // Vous n’êtes pas membre ? Inscrivez-vous maintenant
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Vous n’êtes pas membre?",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
                const SizedBox(
                  width: 4,
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "S'inscrire",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
