import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:kornaz_investing/Hakkinda.dart';
import 'package:kornaz_investing/HomePage.dart';
import 'package:kornaz_investing/SifreUnutma.dart';
import 'package:kornaz_investing/Uye_ol.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController nameController = new TextEditingController();
  TextEditingController passwordControler = new TextEditingController();


  String userName;
  String password;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('assets/Kornaz_invest_logo.jpg'),
              Text("Kornaz inevesting", style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,fontSize: 40.0,color: Colors.deepPurple), ),
              SizedBox(height: 60,),
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueGrey),
                  ),
                  labelText: "Kullanıcı Adı",
                  labelStyle: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return "kullanıcı adınızı giriniz";
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  userName = value;
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: passwordControler,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueGrey),
                  ),
                  labelText: "şifre",
                  labelStyle: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return "şifrenizi giriniz";
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  password = value;
                },
              ),
              //                        *********************** uye ol       şifrenız mı unuttunuz *********************
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                    child: Text("üye ol"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => UyeOl() ));
                    },
                  ),
                  MaterialButton(
                    child: Text("şifrenizimi unuttunuz?"),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SifreUnutma() ));
                    },

                  ),
                ],
              ),
              _loginButton(),
              Container(
                alignment: Alignment.bottomLeft,
                child: MaterialButton(
                  color: Colors.blue,
                  child: Text("HAKKINDA"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Hakkinda()),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _loginButton() => TextButton(
        child: Text("giriş yap"),
        autofocus: true,
        onPressed: () {
          setState(() {
            userName = nameController.text;
            password = passwordControler.text;
            _formKey.currentState.save();
          });
          if (userName == "faruk" && password=="1234") {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage() ));

            }else{
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage() ));
              //debugPrint("tekrar dene $userName, $password");
            }
          },
      );
}
