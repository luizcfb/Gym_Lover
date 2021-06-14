import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gym_lover/login_screen.dart';

class splash_screen extends StatefulWidget {
  @override
  _splash_screenState createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(milliseconds: 1500),
      () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => login_screen()),
      ),
    );
    SystemChrome.setEnabledSystemUIOverlays([]);
  }

  @override
  bool _visible = true;

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: [Color(0xFF9f1a1b), Color(0xFFd31f24)])),
          child: Center(
              child: AnimatedOpacity(
            opacity: _visible ? 1.0 : 0.0,
            duration: Duration(milliseconds: 1000),
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/image/logo_mini.png'),
              )),
            ),
          ))),
    );
  }
}
