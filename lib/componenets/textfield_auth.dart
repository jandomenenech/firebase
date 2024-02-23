import 'package:flutter/material.dart';

class TextField_Auth extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final bool obscureText;

  const TextField_Auth({
    super.key,
    required this.controller,
    required this.hint,
    required this.obscureText,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.symmetric(horizontal: 25,),
    child: TextField(
      cursorColor: const Color.fromARGB(255, 222, 100, 0),
      style: const TextStyle(
        color : Color.fromARGB(255, 154, 69, 0)
      ),
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: Colors.orange[800]),
        enabledBorder: const  OutlineInputBorder(borderSide: BorderSide(color: Color.fromARGB(255, 255, 229, 190))),
        focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
        fillColor: const Color.fromARGB(255, 255, 205, 130),
        filled: true,
      ),
    ),
    );
  }
}