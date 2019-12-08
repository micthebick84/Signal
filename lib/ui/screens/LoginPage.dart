import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:signal/sign_in.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState  createState() {
    // TODO: implement createState
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlutterLogo(
                size: 150,
              ),
              SizedBox(
                height: 50,
              ),
              _signInButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _signInButton() {
    return OutlineButton(
      splashColor: Colors.grey,
      onPressed: () {
        signInWithGoogle().whenComplete(() {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return null;
          }));
        });
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40),
      ),
      highlightElevation: 0,
      borderSide: BorderSide(color: Colors.grey),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image(
            image: AssetImage("assets/g_logo.png"),
            height: 35.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              'Sign in with Google',
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
          )
        ],
      ),
    );
  }
}
