
import 'package:flutter/material.dart';

class IkinciSayfa extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("İkinci Sayfa!"),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: Text(
          "İKİNCİ SAYFA",
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
