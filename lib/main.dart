import 'package:flutter/material.dart';
import 'package:kornaz_investing/Login_Page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Kornaz Invest",
      debugShowCheckedModeBanner: false,
      home: LoginPage(),

    );
  }
}


