import 'package:firebase_auth/firebase_auth.dart';

class ServeiAuth{
  final FirebaseAuth _auth = FirebaseAuth.instance;
  
    Future<UserCredential> loginAmbEmailIPassword (String email, password) async{
      try{
    UserCredential userCredential = await _auth.signInWithEmailAndPassword(
      email: email,
      password: password
      );
    return userCredential;
    
    }on FirebaseAuthException catch (e){
      throw  Exception (e.code);
  }
  
}

Future<UserCredential> registerAmbEmailIPassword (String email, password, confirmarPass) async{
  try{
    if(password ==  confirmarPass){
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password
      
      );
      return userCredential;
    }else{
      throw Exception("Las contraseñas no coinciden");
    }
  }on FirebaseAuthException catch (e){
    throw  Exception (e.code);
  }
}

}