import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Appbar")),
      ),

      body: Column(
        children: [
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.blue,
              
            ),

            child: const Center(
              child: Text("Texto exemplo", 
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
                color: Colors.red,
                height: 100,
                width: 200,
                child: const Center(
                  child: Text("Container 1"),
                ),
              ),

              Container(
                color: Colors.purple,
                height: 100,
                width: 200,
                child: const Center(
                  child: Text("Container 2"),
                ),
              ),
            ],
          )
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(items: const [

        BottomNavigationBarItem(
        icon: Icon(Icons.abc),
        label: "Ícone 1"),

        BottomNavigationBarItem(
        icon: Icon(Icons.abc),
        label: "Ícone 2"),

        BottomNavigationBarItem(
        icon: Icon(Icons.abc),
        label: "Ícone 3"),

      ]
      
      ),
    );
  }
}