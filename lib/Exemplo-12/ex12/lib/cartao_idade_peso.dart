import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CartaoIdadePeso extends StatelessWidget {
  const CartaoIdadePeso({Key? key, required this.tipo}) : super(key: key);

  final String tipo;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column( 
        mainAxisAlignment: MainAxisAlignment.start,
        
        children: [ 
          Text('$tipo', style: const TextStyle(fontSize: 15.0),), 
          const Text('74', style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold)), 
          Row( 
            mainAxisAlignment: MainAxisAlignment.center,
            children: [ 
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: Container( 
                  height: 40,
                  width: 40,
                  child: Icon(Icons.remove),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.0), color: Colors.white),
                ),
              ),
      
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: Container( 
                  height: 40,
                  width: 40,
                  child: Icon(Icons.add),
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