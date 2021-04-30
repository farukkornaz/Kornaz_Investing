import 'package:flutter/material.dart';
import 'package:kornaz_investing/Profil.dart';
import 'package:kornaz_investing/Yatir_cek.dart';
import 'package:kornaz_investing/Markets.dart';
import 'package:kornaz_investing/Wallet.dart';

class HomePage extends StatefulWidget {
  //final String value;
  //HomePage({this.value});
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String kac = "ndfjıkbhgvndjfvnbk";
  //String value;
  //_HomePageState({Key key,@required this.value}) : super(key : key);

  //Widget deneme() => Text("deneme");
  //Widget deneme() => Text("deneme2");
  String hadi= "denemeeeeeeee";
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget callTheFunc() {
    if (_selectedIndex == 0) {
      return markets();
    } else if (_selectedIndex == 1) {
      return wallet();
    } else if (_selectedIndex == 2) {
      return yatir();
    }
    else if(_selectedIndex==3){
      return profil(kac);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: callTheFunc(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.trending_up),
            label: 'Markets',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sync),
            label: 'Pay/Withdraw',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );

  }
  void bos(){
    print(hadi);
  }
}
