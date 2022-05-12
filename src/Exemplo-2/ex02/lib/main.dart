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
        body: Column(

          // Espaçamento entre os elementos
          mainAxisAlignment: MainAxisAlignment.center,
          
        children: [
        Row(mainAxisAlignment: MainAxisAlignment.center, 
            children: [ 
              
//                 Primeiro container, maior
            Container(
              margin: const EdgeInsets.all(20.0),
              color: Colors.blue,
              width: 295.0,
              height: 295.0,
            ),
          ]),
                  
                  
//                   Linha 1, onde ficarão os outros containers
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
          // 1
          Container(
            margin: const EdgeInsets.all(13.0),
            color: Colors.amber[600],
            width: 110.0,
            height: 70.0,
          ),

            // 2
            Container(
              margin: const EdgeInsets.all(13.0),
              color: Colors.amber[600],
              width: 70.0,
              height: 70.0,
            ),

            // 3
            Container(
            margin: const EdgeInsets.all(13.0),
            color: Colors.amber[600],
            width: 70.0,
            height: 70.0,
          ),
            ],
        ),


        // Linha 2
      Row(
        
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        
        children: [
          
          // 1
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10.0),
            color: Colors.blue,
            width: 110.0,
            height: 70.0,
          ),


          // 2
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10.0),
            color: Colors.blue,
            width: 155.0,
            height: 70.0,
          ),

        ]),

        ]
        
        )
        
        
    )
        
        
        
      );
  }
}
