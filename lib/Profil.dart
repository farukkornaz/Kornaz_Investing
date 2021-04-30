import 'package:flutter/material.dart';
import 'package:kornaz_investing/HomePage.dart';

Widget profil(String deger) {
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Color.fromARGB(250, 50, 32, 50),
      title: Text(
        "Hesap",
      ),
      centerTitle: true,
    ),
    body: Container(
      color: Color.fromARGB(250, 21, 32, 43),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 40.0,),
          Text(
            "Kullanıcı Bilgileri",
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 40.0,),
          Divider(height: 10.0,color: Colors.blueGrey,indent: 65.0,endIndent: 65.0,),
          Container(
            margin: EdgeInsets.only(left: 70.0,top: 15.0,bottom: 15.0,right: 70.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Ad",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "Ahmet Faruk kornaz",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          Divider(height: 10.0,color: Colors.blueGrey,indent: 65.0,endIndent: 65.0,),
          Container(
            margin: EdgeInsets.only(left: 70.0,top: 15.0,bottom: 15.0,right: 70.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "E-Posta",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "fkornaz@hotmail.com",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          Divider(height: 10.0,color: Colors.blueGrey,indent: 65.0,endIndent: 65.0,),
          Container(
            margin: EdgeInsets.only(left: 70.0,top: 15.0,bottom: 15.0,right: 70.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Telefon numarası",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "0 505 582 555",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          Divider(height: 10.0,color: Colors.blueGrey,indent: 65.0,endIndent: 65.0,),
          Container(
            margin: EdgeInsets.only(left: 70.0,top: 15.0,bottom: 15.0,right: 70.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Üyelik tarihi",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "18/09/2020",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
