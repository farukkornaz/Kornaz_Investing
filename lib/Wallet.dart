import 'package:flutter/material.dart';

Widget wallet() {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Color.fromARGB(250, 50, 32, 50),
      title: Text(
        "Wallet",
      ),
      centerTitle: true,
    ),
    body: Container(
      color: Color.fromARGB(250, 21, 32, 43),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment:  Alignment.center,
            decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white30),
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(10.0),
            height: 200,
            child: Text(
              """Topplam varlık 1264516.00 TRY""",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    ),
  );
}
