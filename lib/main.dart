import 'package:bytebank/screens/transferencia/lista.dart';
import 'package:flutter/material.dart';

void main() => runApp(ByteBankApp());

class ByteBankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green[900],
        accentColor: Colors.greenAccent[700],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.greenAccent[700],
          textTheme: ButtonTextTheme.primary,
          minWidth: 300.0,
          height: 48.0,
        ),
      ),
      home: ListaTransferencias(),
    );
  }
}
