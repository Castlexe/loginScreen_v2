import 'package:flutter/material.dart';
import 'package:loginscreen_v2/ikinci_sayfa.dart';

class LoginEkrani extends StatelessWidget {

  final _formKey =GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(size: 130,),
            SizedBox(height:16),
            TextFormField(
              controller: _emailController,
              autofocus: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                labelText: "Email",
              ),

              validator: (value){

                if(value!.isEmpty){
                  return "Lütfen Boşlukları Doldurun";
                }
                else if(value!.length<6){
                  return "Email 6 Karekterden Uzun Olmalı.";
                }
                else if(!value.contains('@')){
                  return "Geçerli Bir Email Giriniz!";
                }
                return null;
              },
            ),

            SizedBox(height: 10),

            TextFormField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                labelText: "Parola",
              ),

              validator: (value){
                if(value!.isEmpty){
                  return "Parola Giriniz!";
                }
                else if(value!.length<6){
                  return "Parola 6 Karekterden Uzun Olmalı!";
                }
                return null;
              },


            ),
            SizedBox(height: 10),
            ElevatedButton(
              child: Text(
                "Giriş Yap",
                style: TextStyle(fontSize: 25),
              ),
              onPressed: (){
                if(_formKey.currentState!.validate()){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => IkinciSayfa()
                      )
                  );
                  print("Giriş Yapılıyor.");
                }
              },
            ),
          ],
        ),
      ),
    );
  }


}
