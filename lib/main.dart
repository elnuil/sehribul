import 'package:flutter/material.dart';
import 'anayapim.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:audioplayers/audio_cache.dart';

Anayapim anayapim= Anayapim();
void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        title: const Text('ŞehriBul'),
        backgroundColor: Colors.cyan.shade900,
        ),
        backgroundColor: Colors.cyan,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
    ),
    );
  }
}
class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List <String> skorTut =[];
  void cevapKontrol (String secim) {
    String dogruCevap = anayapim.dogruCevapAl();
    setState(() {
      if(anayapim.soruSon()==true){
        Alert(
          context: context,
          type: AlertType.success,
          title: "SORULAR BİTTİ!",
          desc: "Tebrikler!",
          buttons: [
            DialogButton(
              child: Text(
                "KAPAT",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () => Navigator.pop(context),
              width: 120,
            )
          ],
        ).show();
        anayapim.reset();
        skorTut=[];
      }
// Kullanıcının cevabına göre gerekli sesi çalacak olan yapı
      else { if (secim == dogruCevap) {
        final player = AudioCache();
        player.play('Doğru ses efekti.wav');
      }
      else {
        final player = AudioCache();
        player.play('Yanlış Ses Efekti.wav');
      }
      anayapim.siradakiSoru(); }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                anayapim.soruCumleAl(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        // Şıklar için gerekli buton yapıları
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.lightGreen.shade800),

              child: Text(
                'Erzurum',
                style: TextStyle(
                  // backgroundColor: Colors.deepPurpleAccent,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                cevapKontrol('Erzurum');
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.indigo.shade800),
              child: Text(
                'İstanbul',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                cevapKontrol('İstanbul');
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.deepOrangeAccent),
              child: Text(
                'Kayseri',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                cevapKontrol('Kayseri');
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.deepPurple),
              child: Text(
                'Ankara',
                style: TextStyle(
                  fontSize: 20.0,

                ),
              ),
              onPressed: () {
                cevapKontrol('Ankara');
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.pink),
              child: Text(
                'Nevşehir',
                style: TextStyle(
                  fontSize: 20.0,

                ),
              ),
              onPressed: () {
                cevapKontrol('Nevşehir');
              },
            ),
          ),
        ),
      ],
    );
  }
}

