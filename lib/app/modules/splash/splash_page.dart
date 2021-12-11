import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:gym_lover/app/modules/splash/splash_store.dart';

class SplashPage extends StatefulWidget {
  final String title;
  const SplashPage({Key? key, this.title = 'SplashPage'}) : super(key: key);
  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends ModularState<SplashPage, SplashStore> {

  @override
  void initState() {
    super.initState();
    controller.redirect();
    SystemChrome.setEnabledSystemUIOverlays([]);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xFF9f1a1b),
              Color(0xFFd31f24),
            ],
          ),
        ),
        child: Center(
          child: AnimatedOpacity(
            opacity: controller.isVisible ? 1.0 : 0.0,
            duration: Duration(
              milliseconds: 1000,
            ),
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/image/logo_mini.png'),
              )),
            ),
          ),
        ),
      ),
    );
  }
}
