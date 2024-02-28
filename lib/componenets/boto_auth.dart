import 'package:flutter/material.dart';

class BotoAuth extends StatelessWidget {

  final String text;
  final Function() onTap;

   BotoAuth({
    super.key,
    required this.text,
    required  this.onTap,
   });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 200, vertical:20),
        margin: const EdgeInsets.all(25),
        child: Text("Login",
        style: TextStyle (
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 16,
          letterSpacing: 5,
        ),),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
        color: Color.fromARGB(255, 244, 111, 54),
        ),
      ),
    );
  }
}
