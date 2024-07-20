import 'package:flutter/material.dart';
import 'package:loginscreen_v2/giris_sayfasi.dart';

void main() {
  runApp(AnaSayfa());
}

class AnaSayfa extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginEkrani(),
      debugShowCheckedModeBanner: false,
    );

  }
}

