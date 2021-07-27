import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get.dart';
import 'package:novo/app/controller/signin_controller.dart';

class SigninPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro"),
      ),
      body: GetBuilder(
        init: SigninController(),
        builder: (_){ return Center(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 24),
            children: [
              Hero(tag: 'hero',
                child: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 48,
                  child: Image.asset("assets/user.png"),
                ),
              ),
              SizedBox(height: 48),
              TextFormField(
                controller: _.controllerNome,
                keyboardType: TextInputType.text,
                autofocus: false,
                //initialValue: "Nome",
                decoration: InputDecoration(
                  hintText: "Nome",
                  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32),

                  ),

                ),
              ),
              SizedBox(height: 8),
              TextFormField(
                controller: _.controllerEmail,
                keyboardType: TextInputType.emailAddress,
                autofocus: false,
                //initialValue: "emailteste@gmail.com",
                decoration: InputDecoration(
                  hintText: "E-mail",
                  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32),

                  ),

                ),
              ),
              SizedBox(height: 8),
              TextFormField(
                controller: _.controllerSenha,
                autofocus: false,
                obscureText: true,
                // initialValue: "Senha",
                decoration: InputDecoration(
                  hintText: "Senha",
                  contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32),

                  ),

                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  onPressed: (){
                    _.validateSigninFields();
                  },
                  padding: EdgeInsets.all(12),
                  color: Get.theme.primaryColor,
                  child: Text("Cadastrar", style: TextStyle(color: Colors.white),),
                ),
              ),
              GetX<SigninController>(
                builder: (_){ return Text(
                  _.errorMensage,
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                  ),
                );}
              ),
            ],
          ),
        );}
      ),
    );

  }
}