import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:novo/app/data/model/usuario.dart';

class SigninController extends GetxController{

//Catch data from textfields

TextEditingController controllerNome = TextEditingController();
TextEditingController controllerEmail = TextEditingController();
TextEditingController controllerSenha = TextEditingController();
final _errorMessage = ''.obs;

set errorMensage(value) => _errorMessage.value = value;
get errorMensage => _errorMessage.value;


//Validate data from textfields

validateSigninFields() {

  //getting data from textfields
  String nome = controllerNome.text;
  String email = controllerEmail.text;
  String senha = controllerSenha.text;

  //Validating
  if (nome.isNotEmpty) {
    if (email.isNotEmpty && email.contains("@")) {
      if (senha.isNotEmpty && senha.length > 6) {

        Usuario usuario = Usuario();
        usuario.nome = nome;
        usuario.email = email;
        usuario.senha = senha;

        registerUser(usuario);

      }else{
        errorMensage = "Digite a sua senha - deve conter mais de 6 caracteres.";
      }
    }else{
      errorMensage = "Preencha o seu E-mail utilizando @";
    }
  }else {
    errorMensage = "Preencha o seu Nome";
  }





}

//Creating user in Firebase

registerUser(Usuario usuario){

  FirebaseAuth auth = FirebaseAuth.instance;
  auth.createUserWithEmailAndPassword(
      email: usuario.email,
      password: usuario.senha
  ).then((firebaseUser){
        Get.toNamed('/home');
  }).catchError((error){
        print("erro:" + error.toString() );
        errorMensage = "Ocorreu um erro ao fazer o cadastro.Digite corretamente seus dados.";
  });

}

}