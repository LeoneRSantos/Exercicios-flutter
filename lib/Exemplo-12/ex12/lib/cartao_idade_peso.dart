import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CartaoIdadePeso extends StatelessWidget {
  const CartaoIdadePeso({Key? key, required this.tipo}) : super(key: key);

  final String tipo;

  @override
  Widget build(BuildContext context) {
    return Column( 
      // TODO: Terminar o widget Cartão Idade Peso
      children: [ 
        Text(''), 
        Text(''), 
        Row( 
          children: [ 
            Container(), 
            Container(),
          ],
        ),
      ],
    );
  }
}