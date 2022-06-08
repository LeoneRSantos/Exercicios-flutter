class Pergunta {

  int questaoAtual = 0;
    

  List<String> perguntas = [
    'O metrô é um dos meios de transporte mais seguros do mundo.', 
    'A culinária brasileira é uma das melhores do mundo.', 
    'Vacas podem voar, assim como peixes utilizam os pés para andar.',
    'O Palmeiras tem mundial.'
  ];

  String mostrarPergunta(){

    verificarIndice();
    
    return perguntas[questaoAtual];
  }

  void verificarIndice(){
    
    if (questaoAtual == perguntas.length) {
      questaoAtual = 0;
      
    }

  }
}