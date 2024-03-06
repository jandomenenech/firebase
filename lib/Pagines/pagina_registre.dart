import 'package:firebase/auth/portal_auth.dart';
import 'package:firebase/auth/servei_auth.dart';
import 'package:firebase/componenets/boto_auth.dart';
import 'package:firebase/componenets/textfield_auth.dart';
import 'package:flutter/material.dart';

class PaginaRegistre extends StatefulWidget {

  final void Function() alFerClick;
  PaginaRegistre({
    super.key,
    required this.alFerClick
  });

  @override
  State<PaginaRegistre> createState() => _PaginaRegistreState();
}

class _PaginaRegistreState extends State<PaginaRegistre> {
  final TextEditingController controllerEmail = TextEditingController();

  final TextEditingController controllerPass = TextEditingController();

  final TextEditingController controllerConfirmarPass = TextEditingController();
  void FerRegistre(BuildContext context) async {
    final ServeiAuth serveiAuth = ServeiAuth();
    try{
      await serveiAuth.registerAmbEmailIPassword(
        controllerEmail.text,
        controllerPass.text,
        controllerConfirmarPass.text,
      );
      widget.alFerClick();
    }catch(e){
      // ignore: use_build_context_synchronously
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return const AlertDialog(
              title: Text("Error en el registre"),
            );
          }
      );
              
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 250, 183, 159),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.fireplace,
                      size: 120, color: Color.fromARGB(255, 255, 240, 218)),
                  const SizedBox(height: 25),
                  const Text(
                    "Benvingut/a de nou",
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 240, 218),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 25),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 25,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 1,
                            color: Color.fromARGB(255, 255, 240, 218),
                            indent: 50,
                            endIndent: 50,
                          ),
                        ),
                        Text(
                          "Fes login",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 240, 218)),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 1,
                            color: Color.fromARGB(255, 255, 240, 218),
                            indent: 50,
                            endIndent: 50,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25),
                  TextField_Auth(
                    controller: controllerEmail,
                    hint: "Email",
                    obscureText: false,
                  ),
                  const SizedBox(height: 25),
                  TextField_Auth(
                    controller: controllerPass,
                    hint: "Password",
                    obscureText: true,
                  ),
                  const SizedBox(height: 25),
                  TextField_Auth(
                    controller: controllerConfirmarPass,
                    hint: "Confirmar Password",
                    obscureText: true,
                  ),
                  const SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text("Ets membre?"),
                        const SizedBox(
                          width: 30,
                        ),
                        GestureDetector(
                          onTap: widget.alFerClick,
                          child: const Text(
                            "Fes login",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 49, 88),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  BotoAuth(
                    text: "Registra't",
                    onTap: () => FerRegistre,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
