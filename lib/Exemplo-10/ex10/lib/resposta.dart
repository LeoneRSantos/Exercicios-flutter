class Resposta {
  
  int respostaAtual = 0;
  
  List<bool> respostas = [
    true, 
    true, 
    false, 
    false
  ];

  void verificaIndice(){
    if (respostaAtual == respostas.length) {
      respostaAtual = 0;
    }
  }

  int verificaResposta(bool resposta){

    verificaIndice();

    if (respostas[respostaAtual] == resposta) {
      print('Acertou');
      return 1;
    }

    else{
      print("Errou");
      return 0;
    }
  }
}