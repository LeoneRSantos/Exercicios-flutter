import 'package:ex12/tela_principal.dart';
import 'package:flutter/material.dart';

void main() => runApp(CalculadoraIMC());

class CalculadoraIMC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF04040C),
        scaffoldBackgroundColor: Color(0xFF04040C),
        accentColor: Colors.amber,
      ),
      home: TelaPrincipal(),
    );
  }
}

