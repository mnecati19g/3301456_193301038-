//import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(BenimUygulamam());
}

class BenimUygulamam extends StatelessWidget {
  const BenimUygulamam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        /*appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Bugün Ne Yesem?',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),*/
        body: BilgiAl(),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  @override
  State<YemekSayfasi> createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int corbaNo = 1;
  int yemekNo = 1;
  int tatliNo = 1;

  List<String> corbaAdlari = [
    'Mercimek',
    'Tarhana',
    'Tavuksuyu',
    'Düğün Çorbası',
    'Yoğurtlu Çorbası',
    'Domates Çorbası',
    'Mantar Çorbası',
    'Ezogelin',
    'Cennet Çorbası',
    'Süleymaniye Çorbası',
  ];

  List<String> yemekAdlari = [
    'Patlıcan yemeği',
    'Mantı',
    'Kuru Fasulye',
    'İçli Köfte',
    'Fırın Balık',
    'Tekirdağ Köfte',
    'Fırın Tavuk',
    'Fellah Köftesi',
    'Beyti Kebabı',
    'Söğürme Kebabı',
  ];

  List<String> tatliAdlari = [
    'Kadayıf Dolması',
    'Baklava',
    'Sütlaç',
    'Kazandibi',
    'Dondurma',
    'Revani',
    'Kalburabastı',
    'Ekmek Kadayıfı',
    'Keşkül',
    'Tavuk Göğsü',
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            'Bugün Ne Yesem?',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      overlayColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    onPressed: () {
                      setState(() {
                        if (corbaNo < 10)
                          corbaNo++;
                        else
                          corbaNo = 1;
                        /*corbaNo = Random().nextInt(5) + 1;
                        yemekNo = Random().nextInt(5) + 1;
                        tatliNo = Random().nextInt(5) + 1;*/ //"Bu fonksiyonu kullanırsam tüm çorba çeşitlerini daha uzun sürede görürüm ve arka arkaya aynı çorba gelebilir."
                      });
                      print('$corbaNo.Çorba butonuna tıklandı.');
                    },
                    child: Image.asset('assets/images/corba_$corbaNo.jpg'),
                  ),
                ),
              ),
              Text(
                corbaAdlari[corbaNo - 1],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Container(
                width: 200,
                child: Divider(height: 10, color: Colors.black),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        if (yemekNo < 10)
                          yemekNo++;
                        else
                          yemekNo = 1;
                        /*corbaNo = Random().nextInt(5) + 1;
                        yemekNo = Random().nextInt(5) + 1;
                        tatliNo = Random().nextInt(5) + 1;*/
                      });
                      print('$yemekNo.Yemek Butonuna Tıklandı.');
                    },
                    style: ButtonStyle(
                      overlayColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    child: Image.asset('assets/images/yemek_$yemekNo.jpg'),
                  ),
                ),
              ),
              Text(
                yemekAdlari[yemekNo - 1],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Container(
                width: 200,
                child: Divider(height: 10, color: Colors.black),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: TextButton(
                    style: ButtonStyle(
                      overlayColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    onPressed: () {
                      setState(() {
                        if (tatliNo < 10)
                          tatliNo++;
                        else
                          tatliNo = 1;
                        /*corbaNo = Random().nextInt(5) + 1;
                        yemekNo = Random().nextInt(5) + 1;
                        tatliNo = Random().nextInt(5) + 1;*/
                      });
                      print('$tatliNo.Tatlı Butonuna Tıklandı.');
                    },
                    child: Image.asset('assets/images/tatli_$tatliNo.jpg'),
                  ),
                ),
              ),
              Text(
                tatliAdlari[tatliNo - 1],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Container(
                width: 200,
                child: Divider(height: 7, color: Colors.black),
              ),
              Padding(
                padding: const EdgeInsets.all(96.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    primary: Colors.white,
                    minimumSize: Size(140.0, 60.0),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Sonuc(),
                      ),
                    );
                  },
                  child: Text(
                    'Devam',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BilgiAl extends StatefulWidget {
  String? ad;
  String? soyad;

  @override
  _BilgiAlState createState() => _BilgiAlState();
}

class _BilgiAlState extends State<BilgiAl> {
  TextEditingController adCtrl = new TextEditingController();
  TextEditingController soyadCtrl = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Yemek Uygulaması'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      controller: adCtrl,
                      decoration: new InputDecoration(
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          hintText: "Enter Your Name"),
                    ),
                  ),
                  Divider(
                    height: 15,
                    thickness: 1,
                    color: Colors.white,
                    endIndent: 30,
                    indent: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      controller: soyadCtrl,
                      decoration: new InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          hintText: "Enter Your Surname"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(96.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        primary: Colors.white,
                        minimumSize: Size(140.0, 60.0),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => YemekSayfasi(
                                //  ad1: adCtrl.text,
                                //soyad1: soyadCtrl.text,
                                ),
                          ),
                        );
                      },
                      child: Text(
                        'Yemek Seç',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Sonuc extends StatefulWidget {
  String? ad;
  String? soyad;
  Sonuc({this.ad = 'Mehmet', this.soyad = 'Güleç'});

  @override
  _SonucState createState() => _SonucState();
}

class _SonucState extends State<Sonuc> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            backgroundColor: Colors.blue,
            centerTitle: true,
            title: Text(
              'ÇIKIŞ',
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Afiyet Olsun",
                  style: TextStyle(color: Colors.white, fontSize: 30)),
              Divider(
                height: 30,
                color: Colors.orange,
              ),
              Container(
                  height: 30,
                  child: Text(
                    "${widget.ad}",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  )), //isim
              Container(
                  height: 30,
                  child: Text(
                    "${widget.soyad}",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  )), //soyisim

              Padding(
                padding: const EdgeInsets.all(96.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    primary: Colors.white,
                    minimumSize: Size(140.0, 60.0),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BenimUygulamam()));
                  },
                  child: Text(
                    'Başa Dön',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
