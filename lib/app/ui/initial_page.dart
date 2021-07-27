import 'package:flutter/material.dart';
import 'package:novo/app/routes/app_routes.dart';
import 'package:splashscreen/splashscreen.dart';

class InitialPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    body: Stack(
      children: [
        SplashScreen(
          seconds: 5,
          gradientBackground: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.blue[300],
              Colors.blue[600]
            ],
          ),
          navigateAfterSeconds: Routes.HOME,
          loaderColor: Colors.transparent,
        ),
          Container(
            padding: EdgeInsets.all(40),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/logo.png"),
                fit: BoxFit.contain

              ),
            )
          )
      ],

    ),
    );  
   
  }
}