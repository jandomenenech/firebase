import 'package:flutter/material.dart';

class BotoAuth extends StatelessWidget {
  const BotoAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
