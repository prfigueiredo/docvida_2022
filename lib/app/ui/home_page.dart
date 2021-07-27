import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    appBar: AppBar(title: Center(
        child: Text(
            'DOCvida UFF',
            style: TextStyle(color: Colors.white),
        ),
    ),
    ),

    body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          GestureDetector(
            onTap: () => Get.toNamed('/text'),
            child: Container(
              height: 50,
              color: Colors.cyan[50],
              child: const Center(child: Text('TEXTO')),
            ),
          ),
          SizedBox(height: 8),
          GestureDetector(
            onTap: () => Get.toNamed('/photo'),
            child: Container(
              height: 50,
              color: Colors.cyan[50],
              child: const Center(child: Text('FOTOS')),
            ),
          ),
          SizedBox(height: 8),
          GestureDetector(
            onTap: () => Get.toNamed('/social'),
            child: Container(
              height: 50,
              color: Colors.cyan[50],
              child: const Center(child: Text('REDES SOCIAIS')),
            ),
          ),
          SizedBox(height: 8),
          GestureDetector(
            onTap: () => Get.toNamed('/audio'),
            child: Container(
              height: 50,
              color: Colors.cyan[50],
              child: const Center(child: Text('ÁUDIO')),
            ),
          ),
        ],
      ),
    );
  }
}