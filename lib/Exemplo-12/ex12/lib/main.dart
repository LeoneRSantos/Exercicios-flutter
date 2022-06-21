import 'package:ex12/pages/tela_principal.dart';
import 'package:flutter/material.dart';

void main() => runApp(CalculadoraIMC());

class CalculadoraIMC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF14163B),
        scaffoldBackgroundColor: Color(0xFF14163B),
        
      ),
      home: TelaPrincipal(),
    );
  }
}


