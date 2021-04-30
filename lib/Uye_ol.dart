import 'package:flutter/material.dart';
import 'package:kornaz_investing/HomePage.dart';
import 'package:kornaz_investing/Login_Page.dart';

class UyeOl extends StatefulWidget {
  @override
  _UyeOlState createState() => _UyeOlState();
}

class _UyeOlState extends State<UyeOl> {
  String _name;
  String _lastName;
  String _mail;
  String _password;
  String _phoneNumber;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget buildName() {
    return TextFormField(
      decoration: InputDecoration(labelText: "isim"),
      // ignore: missing_return
      validator: (String value) {
        if (value.isEmpty) {
          return "isim giriniz.";
        }
      },
      onSaved: (String value) {
        _name = value;
      },
    );
  }

  Widget _buildlastName() {
    return TextFormField(
      decoration: InputDecoration(labelText: "SoyAd"),
      // ignore: missing_return
      validator: (String value) {
        if (value.isEmpty) {
          return "zorunlu.";
        }
      },
      onSaved: (String value) {
        _lastName = value;
      },
    );;
  }

  Widget _buildmail() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Email"),
      // ignore: missing_return
      validator: (String value) {
        if (value.isEmpty) {
          return "Mail adresini giriniz.";
        }
      },
      onSaved: (String value) {
        _mail = value;
      },
    );
  }

  Widget _buildpassword() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(labelText: "şifre"),
      // ignore: missing_return
      validator: (String value) {
        if (value.isEmpty) {
          return "şifre giriniz";
        }
      },
      onSaved: (String value) {
        _password = value;
      },
    );
  }

  Widget _buildphoneNumber() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Telefon"),
      // ignore: missing_return
      validator: (String value) {
        if (value.isEmpty) {
          return "Tel no giriniz";
        }
      },
      onSaved: (String value) {
        _phoneNumber = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("uye ekranı"),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildName(),
              _buildlastName(),
              _buildmail(),
              _buildpassword(),
              _buildphoneNumber(),
              SizedBox(height: 100),
              RaisedButton(
                child: Text("submit"),
                onPressed: () {
                  if(!_formKey.currentState.validate()){
                    return;
                  }
                  _formKey.currentState.save();
                  print(_name);
                  print(_lastName);
                  print(_password);
                  print(_mail);
                  print(_phoneNumber);
                  Navigator.of(context).push(MaterialPageRoute(builder: (conetext) => LoginPage()));
                  //HomePage(value: _name,);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
