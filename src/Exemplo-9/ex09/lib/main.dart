
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
      
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
  
    return Scaffold(

      backgroundColor: Colors.blue[400],
      
      body: Column(
  
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      
          children: <Widget>[
            Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Image.asset('images/ball.png'),

              Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, crossAxisAlignment: CrossAxisAlignment.start,
              
                children: const[
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Volley', textAlign: TextAlign.start, style: TextStyle(fontSize: 50.0, fontFamily: 'Concert-one', color: Colors.white),),
                ),
                Text('   do fim de semana', textAlign: TextAlign.left, style: TextStyle(fontSize: 12.0, fontFamily: 'Concert-one', color: Colors.white),),
              ],)
            ],
            ),

            const Text('Jogo Casado', style: TextStyle(fontSize: 35.0, fontFamily: 'Concert-One', color: Colors.white),),

            Container(height: 100, width: 270, 
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.deepPurple),
            child: const Center(child: Text('Iniciar', style: TextStyle(fontFamily: 'Concert-One', fontSize: 35.0, color: Colors.white),)),)
            
          ],
        ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
