import 'package:firebase/auth/servei_auth.dart';
import 'package:firebase/componenets/boto_auth.dart';
import 'package:firebase/componenets/textfield_auth.dart';
import 'package:flutter/material.dart';

class PaginaLogin extends StatefulWidget {

  final void Function() alFerClick;
  const PaginaLogin({
    super.key,
    required this.alFerClick,
    });

  @override
  State<PaginaLogin> createState() => _PaginaLoginState();
}

class _PaginaLoginState extends State<PaginaLogin> {
  final TextEditingController controllerEmail = TextEditingController();
  final TextEditingController controllerPass = TextEditingController();

  
  void FerLogin(BuildContext context)async{

    final ServeiAuth serveiAuth = ServeiAuth();
    try{
        await serveiAuth.loginAmbEmailIPassword(
          controllerEmail.text,
          controllerPass.text
          );
    }catch(e){
      // ignore: use_build_context_synchronously
      showDialog(context: context, 
      builder: (context) => AlertDialog(
        title: const Text("Error"),
        content: Text(e.toString()),
        actions: <Widget>[
          TextButton(
            child: Text("OK"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ));
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
                        const Text("No estas registrat?"),
                        const SizedBox(width: 30,),
                        GestureDetector(
                          onTap: widget.alFerClick,
                          child: const Text("Registra't",
                          style:TextStyle(fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 49, 88),
                          ),              
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                  const SizedBox(height: 10,),
                  BotoAuth(
                    text: "Login",
                    onTap: ()=> FerLogin(context),
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
