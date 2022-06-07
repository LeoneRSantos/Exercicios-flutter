import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      body: 

        // Coluna com os containers
        Column( 
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
          // Primeira fila
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            
            children: [
            // Primeiro container
            Container( 
              margin: const EdgeInsets.symmetric(vertical: 50),
              width: 250,
              height: 75,
              color: Colors.redAccent[700],
              
              child: const Text("Texto",
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 50, color: Colors.white),),
            ),
          ],
          ),

          // Segunda fila
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            
            children: [
            // Segundo container
            Container( 
              margin: const EdgeInsets.symmetric(vertical: 50),
              width: 250,
              height: 75,
              color: Colors.redAccent[700],
              
              child: const Text("Texto",
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 50),),
            ),
          ],
          ),
          
          // Terceira fila
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            
            children: [
            // Terceiro container
            Container( 
              margin: const EdgeInsets.symmetric(vertical: 50),
              width: 250,
              height: 75,
              color: Colors.redAccent[700],
              
              child: const Text("Texto",
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 50),),
            ),
          ],
          ),
        ],),
    )
    );
  }
}

