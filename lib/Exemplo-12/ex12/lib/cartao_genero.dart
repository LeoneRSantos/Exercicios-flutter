import 'package:flutter/material.dart';

class CartaoGenero extends StatelessWidget {
  const CartaoGenero({Key? key, required this.icone, required this.genero}) : super(key: key);

  final IconData icone;
  final String genero;

  @override
  Widget build(BuildContext context) {
    return Column( 
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icone, size: 50, color: Color(0xFFBABFD3),),
        Text(genero, style: TextStyle(color: Color(0xFFBABFD3),),),
      ],
    );
  }
}