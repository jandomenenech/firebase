import 'package:firebase/auth/servei_auth.dart';
import 'package:flutter/material.dart';

class PaginaInici extends StatelessWidget {
  
  PaginaInici({
    super.key,
  });

  void logout(){
    ServeiAuth serveiAuth = ServeiAuth();
    serveiAuth.logout();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina Inici"),
        actions: [
          IconButton(onPressed: logout, icon: Icon(Icons.logout))
        ],
      ),
    );
  }
}