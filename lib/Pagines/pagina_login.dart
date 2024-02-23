import 'package:firebase/componenets/boto_auth.dart';
import 'package:firebase/componenets/textfield_auth.dart';
import 'package:flutter/material.dart';

class PaginaLogin extends StatefulWidget {
  const PaginaLogin({super.key});

  @override
  State<PaginaLogin> createState() => _PaginaLoginState();
}

class _PaginaLoginState extends State<PaginaLogin> {
  final TextEditingController controllerEmail = TextEditingController();
  final TextEditingController controllerPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 183, 159),
      body: Center(
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
                    style: TextStyle(color: Color.fromARGB(255, 255, 240, 218)),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment:MainAxisAlignment.end,
                children: [
                  const Text("No ets membre?"),
                  const SizedBox(width: 30,),
                  GestureDetector(
                    child: const Text("Registra't",
                    style:TextStyle(fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 49, 88),
                    ),              
                    ),
                  ),
                  
                ],
              ),
            ),
            SizedBox(height: 10,),
            BotoAuth(
            ),
          ],
        ),
      ),
    );
  }
}
