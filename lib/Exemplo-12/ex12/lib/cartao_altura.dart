import 'package:flutter/material.dart';

class CartaoAltura extends StatefulWidget {
  const CartaoAltura({Key? key}) : super(key: key);

  @override
  State<CartaoAltura> createState() => _CartaoAlturaState();
}

class _CartaoAlturaState extends State<CartaoAltura> {

  double _valorAtual = 100.0;
  int _aux = 100;

  @override
  Widget build(BuildContext context) {
    return Column( 
      mainAxisAlignment: MainAxisAlignment.center,
      children: [ 
        Text('ALTURA', style: TextStyle(fontSize: 20, color: Colors.white,),), 
        Row( 
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [ 
          Text('$_aux', style: TextStyle(fontSize: 40, color: Colors.white,),), 
          Text('CM', style: TextStyle(color: Colors.white,),),
        ],
        ), 

      Slider(
        value: _valorAtual,
        activeColor: Colors.white,
        max: 200,
        label: _valorAtual.round().toString(),
        onChanged: (double valor) {
          setState(() {
            _valorAtual = valor;
            _aux = _valorAtual.ceil();
          });
        },
      )

      ],
    );
  }
}