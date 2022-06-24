import 'package:ex12/widgets/botao_calcular.dart';
import 'package:ex12/widgets/cartao_genero.dart';
import 'package:ex12/widgets/cartao_idade.dart';
import 'package:ex12/widgets/cartao_peso.dart';
import 'package:ex12/widgets/cartao_principal.dart';
import 'package:flutter/material.dart';
import '../widgets/cartao_altura.dart';
import 'dart:math';

class TelaPrincipal extends StatefulWidget {
  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {

  double imcAtual = 21.0;

  int pesoAtual = 70, idade = 20, alturaAtual = 100;

  String _auxResultado = '';

  void incrementarPeso(){
    setState(() {
      pesoAtual++;
    });
  }

  void decrementarPeso(){
    setState(() {
      pesoAtual--;
    });
  }

  void calcularAltura(double d){
    setState(() {
      alturaAtual = d.toInt();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF111639),
        title: const Center(child: Text('CALCULADORA IMC')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [ 
          Row(
            children: const[
              CartaoPrincipal(conteudo: CartaoGenero(icone: Icons.male, genero: 'MASCULINO')),
              CartaoPrincipal(conteudo: CartaoGenero(icone: Icons.female, genero: 'FEMININO')),
            ],
          ),

          CartaoPrincipal(conteudo: CartaoAltura(altura: alturaAtual, alteraValor: (d) { calcularAltura(d); },)),

          Row( 
            children: [ 
              CartaoPrincipal(conteudo: CartaoPeso(peso: pesoAtual, decrementar: () { decrementarPeso();  }, incrementar: () { incrementarPeso(); },),),
              CartaoPrincipal(conteudo: CartaoIdade()),
              
            ],
          ), 

          BotaoCalcular(peso: pesoAtual, altura: alturaAtual),
        ],
      ),
     
    );
  }
}