import 'package:flutter/material.dart';

String _iban;
String _miktar;

final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
Widget yatir() {
  return Scaffold(
    appBar: AppBar(
      centerTitle: true,
      backgroundColor: Color.fromARGB(250, 50, 32, 50),
      title: Text("para çek/yatır"),
    ),
    body: Container(
      color: Color.fromARGB(250, 21, 32, 43),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildIbanNumber(),
            SizedBox(height: 50),
            miktar(),
            SizedBox(height: 100),
            Row(
              mainAxisAlignment:  MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                RaisedButton(
                  child: Text("para çek"),
                  onPressed: () {
                    if (false) {
                      return;
                    }
                    _formKey.currentState.save();
                  },
                ),
                SizedBox(),
                RaisedButton(
                  child: Text("para yatır."),
                  onPressed: () {
                    if (false) {
                      return;
                    }
                    _formKey.currentState.save();
                  },
                ),
                SizedBox(),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

Widget _buildIbanNumber() {
  return Container(

    decoration: BoxDecoration(borderRadius: BorderRadius.circular((25.0)),color: Colors.white,),
    child: TextFormField(
      decoration: InputDecoration(
          labelText: "IBAN",
          labelStyle: TextStyle(color: Colors.pink),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.deepPurple),
          ),
          focusedBorder: OutlineInputBorder(borderSide: const BorderSide(color: Colors.deepPurple, width: 2.0),borderRadius: BorderRadius.circular(25.0),),
          //UnderlineInputBorder(borderSide: BorderSide(color: Colors.deepPurple),),
      ),

      // ignore: missing_return
      validator: (String value) {
        if (value.isEmpty) {
          return;
        }
      },
      onSaved: (String value) {
        _iban = value;
      },
    ),
  );
}

Widget miktar() {
  return Container(
    decoration: BoxDecoration(borderRadius: BorderRadius.circular((25.0)),color: Colors.white,),
    child: TextFormField(
      decoration: InputDecoration(
        labelText: "TL",
        labelStyle: TextStyle(color: Colors.pink),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.deepPurple),
        ),
        focusedBorder: OutlineInputBorder(borderSide: const BorderSide(color: Colors.deepPurple, width: 2.0),borderRadius: BorderRadius.circular(25.0),),
        //UnderlineInputBorder(borderSide: BorderSide(color: Colors.deepPurple),),
      ),

      // ignore: missing_return
      validator: (String value) {
        if (value.isEmpty) {
          return;
        }
      },
      onSaved: (String value) {
        _miktar = value;
      },
    ),
  );
}