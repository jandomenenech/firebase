import 'package:flutter/material.dart';

class PaginaInici extends StatelessWidget {
  final void Function() logout;
  PaginaInici({
    super.key,
    required this.logout,
  });

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