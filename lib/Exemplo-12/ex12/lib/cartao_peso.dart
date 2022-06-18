import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CartaoPeso extends StatefulWidget {
  CartaoPeso({Key? key}) : super(key: key);

  @override
  State<CartaoPeso> createState() => _CartaoPesoState();
}

class _CartaoPesoState extends State<CartaoPeso> {
  int peso = 60;

  void incrementarPeso(){
    setState(() {
      peso++;
    });
  }

  void decrementarPeso(){
    setState(() {
      peso--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column( 
        mainAxisAlignment: MainAxisAlignment.start,
        
        children: [ 
          Text('PESO', style: const TextStyle(fontSize: 15.0, color: Colors.white),), 
          Text('$peso', style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.white)), 
          Row( 
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ 
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: Container( 
                  height: 40,
                  width: 40,
                  child: TextButton(child: Icon(Icons.remove), onPressed: decrementarPeso,),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.0), color: Colors.white),
                ),
              ),
      
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: Container( 
                  height: 40,
                  width: 40,
                  child: TextButton(child: Icon(Icons.add), onPressed:incrementarPeso),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.0), color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}