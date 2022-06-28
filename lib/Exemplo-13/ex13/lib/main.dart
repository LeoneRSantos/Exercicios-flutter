import 'dart:ui';
import 'package:ex13/fato_de_gato.dart';
import 'package:flutter/material.dart';

import 'package:dio/dio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Consumo de API com DIO',
      theme: ThemeData(
        
        primarySwatch: Colors.purple,
      ),
      home: const TelaPrincipal(title: 'Consumo de API com DIO'),
    );
  }
}

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      
      body: FutureBuilder( 
        future: Dio().get('https://catfact.ninja/fact'), 
        builder: (BuildContext context, AsyncSnapshot<Response<dynamic>> snapshot){
          
          // Se o snapshot tem dados dentro dele
          if(snapshot.hasData){ 
            Response? resposta = snapshot.data;

            // Caso dê certo, retorna o resultado
            if(resposta?.statusCode == 200){
              FatoDeGato fato = FatoDeGato.fromJson(resposta?.data);

              return Center(
                child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      'Fato de gato obtido a partir da API:', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('${fato.fact!}', textAlign: TextAlign.center ,style: const TextStyle(fontSize: 16.0, color: Colors.purple),),
                    ),
                  ],
                ),
              );
            }

            // Caso não dê certo
            else{
              return Text('${resposta?.statusMessage}');
            }

          }

          else if (snapshot.hasError){
            return Text('Falha na conexão: ${snapshot.error}');
          }

          return const Center(child: CircularProgressIndicator(color: Colors.purple));
          
        })
    
  );
  }
}
