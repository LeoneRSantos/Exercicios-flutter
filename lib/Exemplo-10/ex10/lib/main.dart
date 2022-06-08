import 'package:ex10/resposta.dart';
import 'package:flutter/material.dart';
import 'pergunta.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text('Quiz', style: TextStyle(color: Colors.black))), backgroundColor: Colors.white,),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
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
        icones.add(Icon(Icons.check));
      }
      else{
        icones.add(Icon(Icons.close));
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
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                'As perguntas serão exibidas aqui.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
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
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red.shade900,
              child: Text(
                'Falso',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                //O usuário clica no botão falso.
              },
            ),
          ),
        ),
        Row(
          children: icones,
        )
        //TODO: Adicionar uma Row aqui para o marcador de pontos.
      ],
    );
  }
}

/*
pergunta1: 'O metrô é um dos meios de transporte mais seguros do mundo', verdadeiro,
pergunta2: 'A culinária brasileira é uma das melhores do mundo.', verdadeiro,
pergunta3: 'Vacas podem voar, assim como peixes utilizam os pés para andar.', falso,
*/