import 'dart:math';
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
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Diceee'),
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
    final Random r = Random();
    int face1 = 1;
    int face2 = 1;
    


  void _sortearFace() {
    setState(() {
      face1 = r.nextInt(6);
      face2 = r.nextInt(6);
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Center(child: Text(widget.title)),
      ),
      body: Column(
  
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: [
                Expanded(child: TextButton(onPressed: _sortearFace, 
                  child: Image.asset('images/dice${face1+1}.png')
                  ),
                  ),
                Expanded(child: TextButton(onPressed: _sortearFace, 
                child: Image.asset('images/dice${face2+1}.png'),) 
                ), 
              ],
            ),
            
          ],
        ),
    );
  }
}
