import 'package:flutter/material.dart';

class OnePage extends StatelessWidget {
  const OnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(

        children: [
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.blue,
              
            ),

            child: const Center(
              child: Text("Esta é a página 1", 
              style: TextStyle(
                color: Colors.white,
                fontSize: 40.0,
              ),
              
              ),
            ),
          ),

          Row(
            children: [
              Container(
                color: Colors.orange,
                height: 100,
                width: 200,
                child: const Center(
                  child: Text("Página 2"),
                ),
              ),

              Container(
                color: Colors.cyan,
                height: 100,
                width: 200,
                child: const Center(
                  child: Text("Página 3"),
                ),
              ),
            ],
          )
        ],
      );
  }
}