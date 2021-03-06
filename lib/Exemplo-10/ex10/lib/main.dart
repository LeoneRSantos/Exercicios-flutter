import 'package:ex10/resposta.dart';
import 'package:flutter/material.dart';
import 'pergunta.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Center(child: Text('Quiz', style: TextStyle(color: Colors.black))), backgroundColor: Colors.white,),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {

  Pergunta p = Pergunta();
  Resposta r = Resposta();

  bool resposta = false;

  int qtdIcones = 0;

  void responder(bool resposta){

    setState(() {
                  
      int aux = r.verificaResposta(resposta);
      if (aux == 1) {
        icones.add(const Icon(Icons.check, color: Colors.green,));
      }
      else{
        icones.add(Icon(Icons.close, color: Colors.red.shade900,));
      }

      p.questaoAtual++;
      r.respostaAtual++;
      qtdIcones++;

      verificarIcones();
    });
  }

  void verificarIcones(){
    
    if (qtdIcones == p.perguntas.length+1) {
      icones.clear();
    }
  }

  List<Icon> icones = [
    
  ];


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                p.mostrarPergunta(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 25.0,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: const Text(
                'Verdadeiro',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                resposta = true;
                responder(resposta);
                
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red.shade900,
              child: const Text(
                'Falso',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                resposta = false;
                responder(resposta);
               
              },
            ),
          ),
        ),
        Row(
          children: icones,
        ),
        
      ],
    );
  }
}
