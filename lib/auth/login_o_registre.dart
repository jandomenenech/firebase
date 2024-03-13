import 'package:firebase/Pagines/pagina_login.dart';
import 'package:firebase/Pagines/pagina_registre.dart';
import 'package:flutter/material.dart';


class LoginORegistre extends StatefulWidget {
  const LoginORegistre({super.key});

  @override
  State<LoginORegistre> createState() => _LoginORegistreState();
}

class _LoginORegistreState extends State<LoginORegistre> {

  bool mostraPaginaLogin = true;

  void intercanviarPaginesLoginRegistre() {
    setState(() {
      mostraPaginaLogin = !mostraPaginaLogin;
    });
  }

  @override
  Widget build(BuildContext context) {

    if (mostraPaginaLogin) {
      return PaginaLogin(alFerClic: intercanviarPaginesLoginRegistre,);
    } else {
      return PaginaRegistre(alFerClic: intercanviarPaginesLoginRegistre,);
    }
    
  }
}