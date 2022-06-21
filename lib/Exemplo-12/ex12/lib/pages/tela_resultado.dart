import 'package:ex12/widgets/botao_calcular.dart';
import 'package:ex12/widgets/botao_recalcular.dart';
import 'package:ex12/widgets/cartao_principal.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TelaResultado extends StatelessWidget {
  const TelaResultado({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF111639),
        title: const Center(child: Text('CALCULADORA IMC')),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [ 
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text('Resultado'.toUpperCase(), 
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0, 
            color: Color(0xFFfdfcfe)),),
          ),

          CartaoPrincipal(conteudo: Column( 
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [ 
              Text('Categoria'.toUpperCase(), 
                style: TextStyle(color: Color(0xFF77e889), fontSize: 20.0,)), 
              Text('22.1', 
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60.0, color: Color(0xFFfffeff)),),  
              Text('Explicação', 
                style: TextStyle(fontSize: 20.0, color: Color(0xFFfffeff)),),

            ],
          )
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: BotaoReCalcular(),
          ),
        ],
      ),
     
    );
  }
}