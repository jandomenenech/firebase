import 'package:firebase/Pagines/pagina_login.dart';
import 'package:firebase/Pagines/pagina_registre.dart';
import 'package:flutter/material.dart';

class LoginRegistre extends StatefulWidget {
  const LoginRegistre({super.key});

  @override
  State<LoginRegistre> createState() => _LoginRegistreState();
}

class _LoginRegistreState extends State<LoginRegistre> {
  bool mostrarPaginaLogin = true;

  void intercanviarPaginasLR(){
    setState(() {
      mostrarPaginaLogin =!mostrarPaginaLogin;
    });
  }
  @override
  Widget build(BuildContext context) {
    if(mostrarPaginaLogin){
      return PaginaLogin(alFerClick: intercanviarPaginasLR,);
    }else{
        return  PaginaRegistre(alFerClick: intercanviarPaginasLR,);
    }
   
  }
}