
import 'dart:ui';

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
      
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);


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

            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(height: 270, width: 65, 

                child: 
                RotatedBox(
                  quarterTurns: -1,
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                        text: 'TIMES',
                        style: TextStyle(fontFamily: 'Concert-one', fontSize: 50.0),
                        children: [
                          WidgetSpan(
                            child: RotatedBox(quarterTurns: 1),
                          )
                        ],
                      ),
                    ),
                  ),
                  ),
                decoration: BoxDecoration(
                color: Colors.blue[100],
              ),
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const  [
                  Padding(
                    padding: EdgeInsets.all(18.0),
                    child: Text('Sicranos', style: TextStyle(color: Colors.yellow, fontSize: 30.0, fontFamily: 'Concert-One'),),
                  ),
                  Padding(
                    padding: EdgeInsets.all(18.0),
                    child: Text('Autoconvidados', style: TextStyle(color: Colors.yellow, fontSize: 30.0, fontFamily: 'Concert-One'),),
                  ),
                  Padding(
                    padding: EdgeInsets.all(18.0),
                    child: Text('Ziraldos', style: TextStyle(color: Colors.yellow, fontSize: 30.0, fontFamily: 'Concert-One'),),
                  ),
                  Padding(
                    padding: EdgeInsets.all(18.0),
                    child: Text('Sparrings', style: TextStyle(color: Colors.yellow, fontSize: 30.0, fontFamily: 'Concert-One'),),
                  ),
                ],
              ),

              Column(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 8.0, bottom: 8.0, right: 0.0),
                  child: Text('3', style: TextStyle(color: Colors.deepPurple, fontFamily: 'Concert-one', fontSize: 52.0),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 8.0, bottom: 8.0, right: 0.0),
                  child: Text('3', style: TextStyle(color: Colors.deepPurple, fontFamily: 'Concert-one', fontSize: 52.0),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 8.0, bottom: 8.0, right: 0.0),
                  child: Text('4', style: TextStyle(color: Colors.deepPurple, fontFamily: 'Concert-one', fontSize: 52.0),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 8.0, bottom: 8.0, right: 0.0),
                  child: Text('5', style: TextStyle(color: Colors.deepPurple, fontFamily: 'Concert-one', fontSize: 52.0),),
                )
              ],
              ),

              Column(crossAxisAlignment: CrossAxisAlignment.start, 
                children: [
                Padding(
                  padding: const EdgeInsets.only(left: 0.0, right: 8.0, top: 8.0, bottom: 8.0),
                  child: RotatedBox(quarterTurns: -1, 
                  child: RichText(text: TextSpan(
                    text: 'jogadores', 
                    style: TextStyle(color: Colors.deepPurple, fontFamily: 'Concert-One', fontSize: 12.0)
                  ),
                  ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 0.0, right: 8.0, top: 8.0, bottom: 8.0),
                  child: RotatedBox(quarterTurns: -1, 
                  child: RichText(text: TextSpan(
                    text: 'jogadores', 
                    style: TextStyle(color: Colors.deepPurple, fontFamily: 'Concert-One', fontSize: 12.0)
                  ),
                  ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 0.0, right: 8.0, top: 8.0, bottom: 8.0),
                  child: RotatedBox(quarterTurns: -1, 
                  child: RichText(text: TextSpan(
                    text: 'jogadores', 
                    style: TextStyle(color: Colors.deepPurple, fontFamily: 'Concert-One', fontSize: 12.0)
                  ),
                  ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 0.0, right: 8.0, top: 8.0, bottom: 8.0),
                  child: RotatedBox(quarterTurns: -1, 
                  child: RichText(text: TextSpan(
                    text: 'jogadores', 
                    style: TextStyle(color: Colors.deepPurple, fontFamily: 'Concert-One', fontSize: 12.0)
                  ),
                  ),
                  ),
                ),
              ]
                
              )
              
            ],
            ),

            const Text('Jogo Casado', style: TextStyle(fontSize: 35.0, fontFamily: 'Concert-One', color: Colors.white),),

            Container(height: 80, width: 270, 
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.deepPurple),
            child: const Center(child: Text('Iniciar', style: TextStyle(fontFamily: 'Concert-One', fontSize: 35.0, color: Colors.white),)), 
            ),

            Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: Container(
                    width: 50.0,
                    height: 50.0,
                    child: Icon(Icons.add, color: Colors.white,),
                    decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.deepPurple),
                  ),
                ),
              ],
            )
            
          ],
        ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
