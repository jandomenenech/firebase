import 'package:flutter/material.dart';

class PaginaInici extends StatelessWidget {
  
  PaginaInici({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina Inici"),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.logout))
        ],
      ),
    );
  }
}