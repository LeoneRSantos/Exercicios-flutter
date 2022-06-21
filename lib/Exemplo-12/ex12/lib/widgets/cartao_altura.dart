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
        Text('ALTURA', style: TextStyle(fontSize: 20, color: Color(0xFFfdfcfe),),), 
        Row( 
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [ 
          Text('$_aux', style: TextStyle(fontSize: 40, color: Color(0xFFfdfcfe),),), 
          Text('CM', style: TextStyle(color: Color(0xFFfdfcfe),),),
        ],
        ), 

      Slider(
        value: _valorAtual,
        activeColor: Color(0xFFfffeff),
        thumbColor: Color(0xFFFD0225),
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