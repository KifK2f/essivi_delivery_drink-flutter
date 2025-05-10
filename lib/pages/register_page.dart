// ignore_for_file: use_build_context_synchronously

import 'package:essivi_delivery_drink/components/my_button.dart';
import 'package:essivi_delivery_drink/components/my_textfield.dart';
import 'package:essivi_delivery_drink/services/auth/auth_service.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
//Controleur du text editing
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  //Methode pour creer un compte
  void register() async {
    //obtenir le service d'authentification
    final _authService = AuthService();

    //Verifier si les mots de passes sont les memmes
    if (passwordController.text == confirmPasswordController.text) {
      //Creer l'utilisateur
      try {
        await _authService.signUpWithEmailAndPassword(
            emailController.text, passwordController.text);
      } catch (e) {
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                    title: Text(
                  e.toString(),
                )));
      }
    } else {
      showDialog(
          context: context,
          builder: (context) => const AlertDialog(
                  title: Text(
                "Les mots de passes ne sont pas identiques",
              )));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
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
              "Créons un compte pour vous",
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
              height: 10,
            ),

            //champ de saisie pour le mot de passe
            MyTextfield(
                controller: passwordController,
                hintText: "Mot de passe",
                obscureText: true),

            const SizedBox(
              height: 10,
            ),

            MyTextfield(
                controller: confirmPasswordController,
                hintText: "Confirmer mot de passe",
                obscureText: true),

            const SizedBox(
              height: 25,
            ),

            //bouton de login
            MyButton(text: "Créer un compte", onTap: register),

            const SizedBox(
              height: 25,
            ),

            // Vous avez déjà un compte ? Connectez-vous
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  " Vous avez déjà un compte ?",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
                const SizedBox(
                  width: 4,
                ),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Connectez-vous",
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
