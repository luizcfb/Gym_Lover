import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:gym_lover/app/shared/stores/auth_store.dart';
import 'package:mobx/mobx.dart';
// import 'package:twitter_login/twitter_login.dart';

part 'login_store.g.dart';

class LoginStore = _LoginStoreBase with _$LoginStore;

abstract class _LoginStoreBase with Store {
  final email = TextEditingController();
  final senha = TextEditingController();
  bool loading = false;

  void redirectCadastro() {
    Modular.to.pushNamed("/cadastro/");
  }

  void redirectHome() {
    Modular.to.pushReplacementNamed("/app/home/");
  }

  void redirectForgotPassword() {
    Modular.to.pushNamed("/forgot_password/");
  }

  Future<void> signInEmail() async {
    try {
      UserCredential userCredential = await Modular.get<FirebaseAuth>().signInWithEmailAndPassword(
        email: email.text,
        password: senha.text,
      );
      Modular.get<AuthStore>().setUser(userCredential);
      redirectHome();
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }

  Future<void> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await Modular.get<GoogleSignIn>().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    final user = await Modular.get<FirebaseAuth>().signInWithCredential(credential);
    Modular.get<AuthStore>().setUser(user);
    redirectHome();
  }

  Future<void> signInWithTwitter() async {
    // Create a TwitterLogin instance
    // final twitterLogin = new TwitterLogin(
    //     apiKey: '<your consumer key>',
    //     apiSecretKey: ' <your consumer secret>',
    //     redirectURI: '<your_scheme>://');

    // // Trigger the sign-in flow
    // final authResult = await twitterLogin.login();

    // // Create a credential from the access token
    // final twitterAuthCredential = TwitterAuthProvider.credential(
    //   accessToken: authResult.authToken!,
    //   secret: authResult.authTokenSecret!,
    // );

    // // Once signed in, return the UserCredential
    // final user =
    //     await Modular.get<FirebaseAuth>().signInWithCredential(twitterAuthCredential);
    // redirectHome();
  }

  Future<void> signInWithFacebook() async {
    // Trigger the sign-in flow
    // final LoginResult loginResult = await FacebookAuth.instance.login();

    // // Create a credential from the access token
    // final OAuthCredential facebookAuthCredential =
    //     FacebookAuthProvider.credential(loginResult.accessToken!.token);

    // // Once signed in, return the UserCredential
    // final user =
    //     Modular.get<FirebaseAuth>().signInWithCredential(facebookAuthCredential);
    // redirectHome();
  }
}
