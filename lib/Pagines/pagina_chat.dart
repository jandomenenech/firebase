import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase/auth/servei_auth.dart';
import 'package:firebase/chat/chat_servei.dart';
import 'package:firebase/componenets/bombolla_missatges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PaginaChat extends StatefulWidget {

  final String emailAmbQuiParlem;
  final String idReceptor;

  const PaginaChat({
    super.key,
    required this.emailAmbQuiParlem,
    required this.idReceptor,
  });

  @override
  State<PaginaChat> createState() => _PaginaChatState();
}

class _PaginaChatState extends State<PaginaChat> {

  final TextEditingController controllerMissatge = TextEditingController();

  final ServeiChat _serveiChat = ServeiChat();

  final ServeiAuth _serveiAuth = ServeiAuth();

  void enviarMissatge() {

    if (controllerMissatge.text.isNotEmpty) {

      // Enviar el missatge.
      _serveiChat.enviarMissatge(
        widget.idReceptor, 
        controllerMissatge,
        );

      // Netejar el camp.
      controllerMissatge.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.emailAmbQuiParlem),
      ),
      body: Column(
        children: [
          // Zona missatges.
          Expanded(
            child: _construirLlistaMissatges(),
          ),

          // Zona escriure missatge.
          _construirZonaInputUsuari(),
        ],
      ),
    );
  }

  Widget _construirLlistaMissatges() {
    
    return StreamBuilder(stream: _serveiChat.getMissatges(widget.idReceptor, _serveiAuth.getUsuariActual()!.uid),
     builder: (context, snapshot){
      if(snapshot.hasError){
        return const Text("Error carregant missatges.");
      }
      if(snapshot.connectionState==ConnectionState.waiting){
        return const Center(child: CircularProgressIndicator());
      }
      return ListView(
        children: snapshot.data!.docs.map((document) => _construirItemMissatge(document)).toList(),
      );

     },
     );
  }
  Widget _construirItemMissatge(DocumentSnapshot document){
    Map<String,dynamic> data = document.data() as Map<String,dynamic>;
    bool esUsuariActual  = data["idAutor"] == _serveiAuth.getUsuariActual()!.uid;
    var aliniament = esUsuariActual ? Alignment.centerRight : Alignment.centerLeft;
    var colorBombolla = esUsuariActual ? Colors.green[200] : Colors.amber[225];
    return Container(
      alignment: aliniament,
      child: BombollaMissatge(
        missatge: data["missatge"],
        colorBombolla: colorBombolla??Colors.black
       
      ),
    );


  }


  Widget _construirZonaInputUsuari() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: controllerMissatge,
              decoration: InputDecoration(
                fillColor: Colors.amber[200],
                filled: true,
                hintText: "Escriu el missatge...",
              ),
            ),
          ),
          const SizedBox(width: 10,),
          IconButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.green),
            ),
            icon: const Icon(Icons.send),
            color: Colors.white,
            onPressed: enviarMissatge, 
          ),
        ],
      ),
    );
  }
}