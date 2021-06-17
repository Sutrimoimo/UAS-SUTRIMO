import 'package:flutter/material.dart';

void main() => runApp(App12());

class App12 extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Program Menghitung Usia',
      home: Scaffold(
        appBar: AppBar(
          title: Text('SUTRIMO (6SIA5)'),
        ),
        body: SutrimoApp(),
      ),
    );
  }
}

class SutrimoApp extends StatefulWidget {
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<SutrimoApp> {
  final txtnama = TextEditingController();
  final txtjammasuk = TextEditingController();
  final txtjamkeluar = TextEditingController();
  final txttarif = TextEditingController() ;
  String hasil = '';
  
  

  onHitung() {
    setState(() {
      var lama = int.parse(txtjamkeluar.text) - int.parse(txtjammasuk.text);
      var diskon = int.parse(txttarif.text) * lama - 1000;    
      var biaya = int.parse(txttarif.text) * lama;
      
          if( lama >= 2  ){
            hasil = "lama $lama Jam  , Biaya ${txtnama.text} = Diskon 1000 menjadi $diskon";} else { hasil = "lama $lama Jam , Biaya ${txtnama.text} = $biaya ";
          }
    });
  }

  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          TextField(
            controller: txtnama,
            decoration: new InputDecoration(
              labelText: "Nama Mahasiswa",
            ),
          ),
          TextField(
            controller: txtjammasuk,
            decoration: new InputDecoration(
              labelText: "Jam masuk",
            ),
          ),
              TextField(
            controller: txtjamkeluar,
            decoration: new InputDecoration(
              labelText: "Jam keluar",
            ),
          ),
          TextField(
            controller: txttarif,
            decoration: new InputDecoration(
              labelText: "Tarif",
            ),
          ),
          RaisedButton(
            child: Text("Hitung"),
            onPressed: onHitung,
          ),
          Text(hasil),
        ],
      ),
    );
  }
}
