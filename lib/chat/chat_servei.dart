
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase/models/missatges.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ServeiChat {

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Stream<List<Map<String, dynamic>>> getUsuaris() {

    return _firestore.collection("Usuaris").snapshots().map((event) {

      return event.docs.map((document) {

        final usuari = document.data();
        return usuari;
      }).toList();
    });
  }

  Future<void> enviarMissatge(String idReceptor, missatge) async {

    final String idUsuariActual = _auth.currentUser!.uid;
    final String emailUsuariActual = _auth.currentUser!.email!;
    final Timestamp timestamp = Timestamp.now();

    Missatge nouMissatge = Missatge(
      idAutor: idUsuariActual, 
      emailAutor: emailUsuariActual, 
      idReceptor: idReceptor, 
      missatge: missatge, 
      timestamp: timestamp,
    );

    // Construim l'id de la sala de chat d'aquest missatge.
    List<String> idsUsuaris = [
      idUsuariActual,
      idReceptor,
    ];
    idsUsuaris.sort();
    String idSalaChat = idsUsuaris.join("_");

    await _firestore
      .collection("SalesChat")
      .doc(idSalaChat)
      .collection("Missatges")
      .add(nouMissatge.retornaMapaMissatge());
  }
}