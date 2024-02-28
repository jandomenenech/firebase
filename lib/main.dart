import 'package:firebase/Pagines/pagina_login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PaginaLogin(),
    );
  }
}

/*Instalar node.js
npm install -g firebase-tools
firebase login
*/

//dart pub global activate firebase-tools
//firebase serve --project=proyecto
//flutterfire configure  //fir-76d6f
//flutter pub add firebase_auth