import 'package:flutter/material.dart';
import 'package:loginscreen_v2/view/giris_sayfasi.dart';
import 'package:loginscreen_v2/view_model/giris_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(AnaSayfa());
}

class AnaSayfa extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:ChangeNotifierProvider(
        create: (BuildContext context) =>GirisViewModel(),
        child: LoginEkrani(),
      ),
      debugShowCheckedModeBanner: false,
    );

  }
}

