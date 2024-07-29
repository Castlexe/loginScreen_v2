import 'package:loginscreen_v2/view_model/giris_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginEkrani extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Consumer<GirisViewModel>(
        builder: (context,viewModel,child){
          return Form(
            key: viewModel.formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlutterLogo(size: 130,),
                SizedBox(height:16),
                TextFormField(
                  controller: viewModel.emailController,
                  autofocus: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    labelText: "Email",
                  ),
                  validator: (value) => viewModel.validateEmail(value!),
                ),

                SizedBox(height: 10),
                TextFormField(
                  controller: viewModel.passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    labelText: "Parola",
                  ),
                  validator: (value) => viewModel.validatePassword(value!),

                ),
                SizedBox(height: 10),
                ElevatedButton(
                  child: Text(
                    "Giriş Yap",
                    style: TextStyle(fontSize: 25),
                  ),
                  onPressed: () => viewModel.login(context),
                ),
              ],
            ),
          );
        }
      ),
    );
  }


}
