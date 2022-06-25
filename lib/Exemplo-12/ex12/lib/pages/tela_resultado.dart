import 'package:ex12/widgets/botao_calcular.dart';
import 'package:ex12/widgets/botao_recalcular.dart';
import 'package:ex12/widgets/cartao_principal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TelaResultado extends StatelessWidget {
  TelaResultado({Key? key, required this.imc}) : super(key: key);

  final double imc;
  TextStyle criarEstiloTexto(Color cor){
    return TextStyle(color: cor, fontWeight: FontWeight.bold, fontSize: 30);
  }

  // TODO texto
  String msg = '';

  Text classificacaoIMC() {
    if (imc < 18.5) {
      msg = 'Procure comer mais e ter uma alimentação balanceada.';
      return Text(
        'MAGREZA',
        style: criarEstiloTexto(Colors.green),
      );
    } else if (imc >= 18.5 && imc < 25.0) {
      msg = 'Excelente! Continue com sua alimentação e exercícios físicos.';
      return Text(
        'NORMAL',
        style: criarEstiloTexto(Colors.green),
      );
    } else if (imc >= 25.0 && imc < 30.0) {
      msg = 'Procure um nutricionista para orientações.';
      return Text(
        'SOBREPESO',
        style: criarEstiloTexto(Colors.yellow),
      );
    } else if (imc >= 30.0 && imc < 40.0) {
      msg = 'Procure orientação médica e um nutricionista.';
      return Text(
        'OBESIDADE',
        style: criarEstiloTexto(Colors.orange),
      );
    } else if (imc >= 40.0) {
      msg = 'Cuidado! Procure orientação médica urgentemente.';
      return Text(
        'OBSESIDADE GRAVE',
        style: criarEstiloTexto(Colors.red),
      );
    } else {
      return Text(
        '',
        style: criarEstiloTexto(Colors.blue),
      );
    }
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
              classificacaoIMC(),
              Text(imc.toStringAsFixed(1), 
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 60.0, color: Color(0xFFfffeff)),),  
              Text(msg, 
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