import 'package:flutter/material.dart';

class CartaoPrincipal extends StatelessWidget {
  const CartaoPrincipal({Key? key, required this.conteudo}) : super(key: key);

  final Widget conteudo;

  @override
  Widget build(BuildContext context) {
    return Expanded( 
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container( 
          height: 100,
          child: conteudo,
          decoration: BoxDecoration( 
            color: Color(0xFF252a4e),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ));
  }
}