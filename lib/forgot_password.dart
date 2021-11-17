import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF9e1b1e),
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 750,
              child: Container(
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/image/login_bg.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          margin: const EdgeInsets.only(top: 15.0),
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image:
                                  AssetImage('assets/image/logo.colorida.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      margin: EdgeInsets.only(
                        top: 200,
                        left: 40,
                        right: 40,
                      ),
                      padding: EdgeInsets.only(
                        top: 2,
                        left: 8,
                        right: 8,
                        bottom: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.email),
                          hintText: "E-mail",
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 320,
                        left: 40,
                        right: 40,
                      ),
                      padding: EdgeInsets.only(
                        top: 2,
                        left: 8,
                        right: 8,
                        bottom: 4,
                      ),
                      child: SizedBox(
                        height: 50,
                        width: 700,
                        // ignore: deprecated_member_use
                        child: RaisedButton(
                          onPressed: () {},
                          color: Color(0xFF9f1a1b),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                          ),
                          child: Text(
                            "Enviar para E-mail",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
