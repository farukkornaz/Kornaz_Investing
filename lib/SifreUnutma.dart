import 'package:flutter/material.dart';

class SifreUnutma extends StatefulWidget {
  @override
  _SifreUnutmaState createState() => _SifreUnutmaState();
}

class _SifreUnutmaState extends State<SifreUnutma> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SİFRENİZİ Mİ UNUTTUNUZ"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            decoration: InputDecoration(labelText: "kayıtlı Mail adresinizi giriniz"),
          ),
        ],
      ),
    );
  }
}
