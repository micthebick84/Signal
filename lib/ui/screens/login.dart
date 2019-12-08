import 'package:flutter/material.dart';
import 'package:signal/state_widget.dart';

class LoginScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    BoxDecoration _buildBackground(){
      return BoxDecoration(
        color: Colors.green
      );
    }


    Text _builText() {
      return Text(
        'Signal',
        style: Theme.of(context).textTheme.headline,
        textAlign: TextAlign.center,
      );
    }


    return Scaffold(

      backgroundColor: Colors.lightBlue,
      body: Container(
        decoration: _buildBackground(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _builText(),
              SizedBox(height: 50.0,),
              MaterialButton(
                color: Colors.white,
                child: Text('SIgn In with Google'),
                onPressed: () => StateWidget.of(context).signInWithGoogle(),
              )
            ],
          ),
        ),
      ),
    );
  }


}