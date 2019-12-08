import 'package:flutter/material.dart';
import 'package:signal/ui/screens/home.dart';

import 'package:signal/ui/screens/login.dart';
import 'package:signal/ui/theme.dart';


class SignalApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Signal',
      theme: buildTheme(),
      routes: {
        '/':(context)=> LoginScreen(),
      },
    );
  }
}