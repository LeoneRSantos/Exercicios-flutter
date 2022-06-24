import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CartaoPeso extends StatefulWidget {
  CartaoPeso({Key? key, required this.peso, required this.incrementar, required this.decrementar}) : super(key: key);

  final int peso;
  final void Function() incrementar;
  final void Function() decrementar;

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
          Text('PESO', style: const TextStyle(fontSize: 15.0, color: Color(0xFFfdfcfe)),), 
          Text('${widget.peso}', style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: Color(0xFFfdfcfe))), 
          Row( 
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ 
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: Container( 
                  height: 40,
                  width: 40,
                  child: TextButton(child: Icon(Icons.remove), onPressed: (){widget.decrementar();},),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.0), color: Color(0xFFfdfcfe)),
                ),
              ),
      
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: Container( 
                  height: 40,
                  width: 40,
                  child: TextButton(child: Icon(Icons.add), onPressed:(){widget.incrementar();},),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.0), color: Color(0xFFfdfcfe)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}