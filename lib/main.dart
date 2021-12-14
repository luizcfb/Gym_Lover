//import 'package:gym_lover/auth.dart';
//import 'package:js/js.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gym_lover/splash_screen.dart';

//import 'avaliacao_fisica.dart';

//import 'package:flutter/services.dart';
//import 'package:gym_lover/login_screen.dart';
//import 'package:firebase_core/firebase_core.dart';
//import 'package:provider/provider.dart';
//import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
      // MultiProvider(providers: [
      // ChangeNotifierProvider(create: (context) => Auth()),
      //     ],
      //     child:
      MyApp());

  // Get.lazyPut<Auth>(() => Auth());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: splash_screen(),
    );
  }
}
