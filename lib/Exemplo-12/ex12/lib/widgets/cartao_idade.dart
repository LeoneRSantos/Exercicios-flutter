import 'package:flutter/material.dart';

class CartaoIdade extends StatefulWidget {
  CartaoIdade({Key? key}) : super(key: key);

  @override
  State<CartaoIdade> createState() => _CartaoIdadeState();
}

class _CartaoIdadeState extends State<CartaoIdade> {
  int idade = 20;

  void incrementarIdade(){
    setState(() {
      idade++;
    });
    
  }

  void decrementarIdade(){
    setState(() {
      idade--;
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column( 
        mainAxisAlignment: MainAxisAlignment.start,
        
        children: [ 
          Text('IDADE', style: const TextStyle(fontSize: 15.0, color: Colors.white,),), 
          Text('$idade', style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: Color(0xFFfdfcfe))), 
          Row( 
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ 
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: Container( 
                  height: 40,
                  width: 40,
                  child: TextButton(child: Icon(Icons.remove), onPressed: decrementarIdade,),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.0), color: Color(0xFFfdfcfe)),
                ),
              ),
      
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: Container( 
                  height: 40,
                  width: 40,
                  child: TextButton(child: Icon(Icons.add), onPressed: incrementarIdade,),
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