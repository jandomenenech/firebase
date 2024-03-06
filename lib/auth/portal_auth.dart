import 'package:firebase/Pagines/paginaInici.dart';
import 'package:firebase/Pagines/pagina_login.dart';
import 'package:firebase/auth/login_o_registre.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class PortalAuth extends StatelessWidget {
  const PortalAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return PaginaInici();
                    } else {
            return LoginRegistre();
          }
        },
      ),
    );
  }
}