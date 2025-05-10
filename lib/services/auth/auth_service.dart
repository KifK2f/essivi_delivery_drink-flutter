import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  //Obtenir une instnce de l'authentification
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  //Obtenir l'utilisateur courant
  User? getCurrentUser() {
    return _firebaseAuth.currentUser;
  }

  //Se connecter
  Future<UserCredential> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }

  //Creer un compte
  Future<UserCredential> signUpWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }

  //Se déconnecter
  Future<void> signOut() async {
    return await _firebaseAuth.signOut();
  }
}
