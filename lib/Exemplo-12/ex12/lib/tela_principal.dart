import 'package:ex12/cartao_genero.dart';
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
        children: [ 
          Row(
            children: [
              CartaoPrincipal(conteudo: CartaoGenero(icone: Icons.male, genero: 'MASCULINO')),
              CartaoPrincipal(conteudo: CartaoGenero(icone: Icons.female, genero: 'FEMININO')),
            ],
          ),

          CartaoPrincipal(conteudo: CartaoAltura()),

          Row( 
            children: [ 
              // TODO: Adicionar aqui os Cartões Idade Peso
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: const Icon(Icons.add),
      ),
    );
  }
}