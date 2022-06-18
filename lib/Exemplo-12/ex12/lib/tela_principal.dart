import 'package:ex12/botao_calcular.dart';
import 'package:ex12/cartao_genero.dart';
import 'package:ex12/cartao_idade.dart';
import 'package:ex12/cartao_peso.dart';
import 'package:ex12/cartao_principal.dart';
import 'package:flutter/material.dart';
import 'cartao_altura.dart';

class TelaPrincipal extends StatefulWidget {
  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF04040C),
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

          const CartaoPrincipal(conteudo: CartaoAltura()),

          Row( 
            children: [ 
              CartaoPrincipal(conteudo: CartaoPeso(),),
              CartaoPrincipal(conteudo: CartaoIdade()),
              
            ],
          ), 

          const BoataoCalcular(),
        ],
      ),
     
    );
  }
}