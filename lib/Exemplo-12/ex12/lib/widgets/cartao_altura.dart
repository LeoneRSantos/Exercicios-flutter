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

        RichText(
          textAlign: TextAlign.start,
          text: TextSpan(
            
            // text: 'altura'.toUpperCase(), style: TextStyle(fontSize: 20, color: Color(0xFFfdfcfe),),
            children: [TextSpan( 
              text: '$_aux', style: TextStyle(fontSize: 40, color: Color(0xFFfdfcfe),), 
            ), 
            
            TextSpan(text: 'CM', style: TextStyle(color: Color(0xFFfdfcfe), fontSize: 18),),
            ]
          )
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