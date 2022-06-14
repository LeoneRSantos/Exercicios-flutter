import 'package:ex11/tecla.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
 
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, }) : super(key: key);

  

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  @override
  Widget build(BuildContext context) {
   
    return SafeArea(
      child: Scaffold(
        
        body: Center(
         
          child: Column(
           
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Tecla(cor: Colors.red, numero: 1,),
              Tecla(cor: Colors.orange, numero: 2,), 
              Tecla(cor: Colors.yellow, numero: 3,), 
              Tecla(cor: Colors.green, numero: 4,), 
              Tecla(cor: Colors.teal, numero: 5,), 
              Tecla(cor: Colors.cyan, numero: 6,), 
              Tecla(cor: Colors.purple, numero: 7,)
             
            ],
          ),
        ),
        // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
