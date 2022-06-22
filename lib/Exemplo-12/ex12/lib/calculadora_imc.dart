import 'dart:math';

class CalculadoraIMC {

  CalculadoraIMC({required this.altura, required this.peso});
  
  final int altura;
  final int peso;
  double _imc = 0;

  String calcularImc(){
    _imc = (peso/pow((altura/100), 2));

    return _imc.toStringAsFixed(1);
  }

  String obterResultado(){
    if (_imc >= 25.0) {
      return 'Acima do peso';
    }

    else if(_imc > 18.5){
      return 'Normal';
    }

    
    return 'Abaixo do peso';
  }

  String obterInterpretacao(){
    if (_imc >= 25.0) {
      return 'Você está com o peso acima do normal. Tente se exercitar mais e procure um nutricionista.';
    }

    else if(_imc > 18.5){
      return 'Excelente! Seu peso está normal.';
    }

    
    return 'Você está abaixo do peso ideal. Consulte um nutricionista para montar uma dieta adequada.';
  }
}