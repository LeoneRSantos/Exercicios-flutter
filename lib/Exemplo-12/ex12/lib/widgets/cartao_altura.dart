import 'package:flutter/material.dart';

class CartaoAltura extends StatefulWidget {
  CartaoAltura({Key? key, required this.altura, required this.alteraValor}) : super(key: key);

  final int altura;
  final void Function(double) alteraValor;

  @override
  State<CartaoAltura> createState() => _CartaoAlturaState();
}

class _CartaoAlturaState extends State<CartaoAltura> {


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
              text: '${widget.altura} ', style: TextStyle(fontSize: 40, color: Color(0xFFfdfcfe),), 
            ), 
            
            TextSpan(text: 'CM', style: TextStyle(color: Color(0xFFfdfcfe), fontSize: 18),),
            ]
          )
          ),

      Slider(
        value: widget.altura.toDouble(),
        activeColor: Color(0xFFfffeff),
        thumbColor: Color(0xFFFD0225),
        max: 200,
        label: widget.altura.toDouble().round().toString(),
        onChanged: (double valor) {
          setState(() {
            widget.alteraValor(valor);
          });
        },
      )

      ],
    );
  }
}