import 'package:flutter/material.dart';
import 'package:gym_lover/splash_screen.dart';
import 'package:flutter/services.dart';
import 'package:gym_lover/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: splash_screen(),
    );
  }
}
