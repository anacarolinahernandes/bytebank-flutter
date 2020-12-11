import 'package:flutter/material.dart';

class Editor extends StatelessWidget {
  final TextEditingController controlador;
  final String rotulo;
  final String dica;
  final IconData icone;

  const Editor({
    this.controlador,
    this.rotulo,
    this.dica,
    this.icone,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24.0, 16.0, 24.0, 16.0),
      child: TextField(
        controller: controlador,
        cursorColor: Colors.green[900],
        style: TextStyle(
          fontSize: 18.0,
        ),
        decoration: InputDecoration(
          icon: icone != null ? Icon(icone) : null,
          labelText: rotulo,
          hintText: dica,
        ),
        keyboardType: TextInputType.numberWithOptions(decimal: true),
      ),
    );
  }
}
