import 'package:flutter/material.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      // Início: Scaffold
      home: Scaffold(   
      
      // Fila de elementos
      body: Row(

        // Espaçamento entre os elementos
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children:[
          Container(
            margin: const EdgeInsets.only(left: 10.0),
            color: Colors.amber[600],
            width: 50.0,
            height: 500.0,
          ),

          // Elementos do centro
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 130.0),
                color: Colors.amber[600],
                width: 50.0,
                height: 50.0,
              ),

              Container(
                margin: const EdgeInsets.symmetric(vertical: 130.0),
                color: Colors.amber[600],
                width: 50.0,
                height: 50.0,
              ),
            ],
          ),

          Container(
                margin: const EdgeInsets.only(left: 10.0),
                color: Colors.amber[600],
                width: 50.0,
                height: 500.0,
          ),
        ]
      ),
    )
    ); 
  }
}