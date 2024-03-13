import 'package:firebase/Pagines/pagina_login.dart';
import 'package:firebase/auth/login_o_registre.dart';
import 'package:firebase/auth/portal_auth.dart';
import 'package:firebase/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PortalAuth(),
    );
  }
}

/*Instalar node.js
npm install -g firebase-tools
firebase login
*/

//dart pub global activate flutterfire_cli
//flutterfire configure  //fir-76d6f
//flutter pub add firebase_auth
//flut
