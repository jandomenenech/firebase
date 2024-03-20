import 'package:flutter/material.dart';

class PaginaChat extends StatefulWidget {
  final String emailAmbQuiParlem;
  const PaginaChat({
    super.key,
    required this.emailAmbQuiParlem,
    });

  @override
  State<PaginaChat> createState() => _PaginaChatState();
}

class _PaginaChatState extends State<PaginaChat> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(widget.emailAmbQuiParlem),
      ),
      body: Column(
        children: [
          _construirLlistaMissatges(),
          _construirZonaInputUsuari(),

        ],
      ),
    );
  }

  Widget _construirLlistaMissatges() {
    return Container();
  }
  Widget _construirZonaInputUsuari() {
    return Container();
  }
}