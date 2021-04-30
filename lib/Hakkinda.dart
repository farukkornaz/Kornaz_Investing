import 'package:flutter/material.dart';

class Hakkinda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kornaz Invest"),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(left: 50.0),
            width: 300.0,
            child: Padding(
              padding: const EdgeInsets.only(top: 100,left: 20.0,right: 20.0),
              child: Text("""Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3301456
kodlu MOBİL PROGRAMLAMA dersi kapsamında 193301048 numaralı Ahmet Faruk KORNAZ 
tarafından 30 Nisan 2021 günü yapılmıştır.""",
                style: TextStyle(color: Colors.deepPurple),textScaleFactor: 1.2,),
            ),
          ),
        ],
      ),
    );
  }
}