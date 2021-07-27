
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:novo/app/data/model/usuario.dart';

class LoginController extends GetxController{

  //Catch data from textfields
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerSenha = TextEditingController();
  final _errorMessage = ''.obs;

  set errorMensage(value) => _errorMessage.value = value;
  get errorMensage => _errorMessage.value;


  //Validate data from textfields FROM Login page!
  validateLoginFields() {

    //getting data from textfields
    String email = controllerEmail.text;
    String senha = controllerSenha.text;

    //Validating
      if (email.isNotEmpty && email.contains("@")) {
        if (senha.isNotEmpty && senha.length > 6) {

          Usuario usuario = Usuario();
          usuario.email = email;
          usuario.senha = senha;

          logginginUser(usuario);

        }else{
          errorMensage = "Senha errada.";
        }
      }else{
        errorMensage = "Preencha o seu E-mail utilizando @";
      }





  }

  //Logging in user
  logginginUser(Usuario usuario){
    FirebaseAuth auth = FirebaseAuth.instance;
    auth.signInWithEmailAndPassword(
        email: usuario.email,
        password: usuario.senha
    ).then((FirebaseUser){
      Get.toNamed('/home');
    }).catchError((error){
      errorMensage = "Erro ao autenticar usuário. Verifique seu e-mail e senha e tente novamente.";
    }

    );
  }


}