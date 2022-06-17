import 'package:flutter/material.dart';

class BoataoCalcular extends StatelessWidget {
  const BoataoCalcular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(height: 60, 
      decoration: const BoxDecoration(color: Color(0xFFFD0225),),
      child: TextButton(onPressed: (){},  
        child: const Text('CALCULAR', style: TextStyle(color: Colors.white),)),
    );
  }
}