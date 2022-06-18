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
        Text('ALTURA', style: TextStyle(fontSize: 20, color: Color(0xFFBABFD3),),), 
        Row( 
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [ 
          Text('183', style: TextStyle(fontSize: 40, color: Color(0xFFBABFD3),),), 
          Text('CM', style: TextStyle(color: Color(0xFFBABFD3),),),
        ],)
      ],
    );
  }
}