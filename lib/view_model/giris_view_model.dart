import 'package:flutter/material.dart';
import '../view/ikinci_sayfa.dart';

class GirisViewModel with ChangeNotifier {

  final _formKey =GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  GlobalKey<FormState> get formKey => _formKey;
  TextEditingController get emailController => _emailController;
  TextEditingController get passwordController => _passwordController;


  String? validateEmail(String value){
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
    }


  String? validatePassword(String value){

      if(value!.isEmpty){
        return "Parola Giriniz!";
      }
      else if(value!.length<6){
        return "Parola 6 Karekterden Uzun Olmalı!";
      }
      return null;
    }


    void login (BuildContext context){
      if(_formKey.currentState!.validate()){
        Navigator.push(context, MaterialPageRoute(builder: (context) => IkinciSayfa()));
        print("Giriş Yapılıyor.");
      }
    }




}









