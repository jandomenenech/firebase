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
    return  Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 183, 159),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
           const Icon(Icons.fireplace,
                size: 120, color: Color.fromARGB(255, 255, 240, 218)),
           const Text(
              "Benvingut/a de nou",
              style: TextStyle(
                  color: Color.fromARGB(255, 255, 240, 218),
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
           const Row(
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
            TextField_Auth(
              controller: controllerEmail,
              hint: "Email" ,
              obscureText: false,
            ),
            TextField_Auth(
              controller: controllerPass,
              hint: "Password" ,
              obscureText: true,
            )

          ],
        ),
      ),
    );
  }
}
