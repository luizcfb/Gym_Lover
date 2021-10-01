import 'dart:convert';
import 'package:js/js.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';

import 'auth_exception.dart';


class Auth with ChangeNotifier{

  static const _URLUp = 'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyDVz-kjmT9Bj9oOmdYD4dDtjQvIO6R8gsU';
  static const _URLIn = 'https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyDVz-kjmT9Bj9oOmdYD4dDtjQvIO6R8gsU';

  showSnack(String titulo, String erro) {
    Get.snackbar(
      titulo,
      erro,
      backgroundColor: Colors.grey[900],
      colorText: Colors.white,
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  Future<void> signup(String email, String password) async{

    final response = await http.post(
      Uri.parse(_URLUp),
      body: jsonEncode({
        'email': email,
        'password': password,
        'returnSecureToken': true,
      }),);

  }

Future<void> sigin(String email, String password) async{

    final response = await http.post(
      Uri.parse(_URLIn),
      body: jsonEncode({
        'email': email,
        'password': password,
        'returnSecureToken': true,
      }),);

    final body = jsonDecode(response.body);

    if (body['error'] != null) {
      throw AuthException(body['error']['message']);
    };

}
}