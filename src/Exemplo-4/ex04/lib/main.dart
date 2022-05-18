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
        home: Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text("Meu cartão"),
        centerTitle: true,
      ),
      body: const Cartao(),
    ));
  }
}

class Cartao extends StatefulWidget {
  const Cartao({Key? key}) : super(key: key);

  @override
  State<Cartao> createState() => _CartaoState();
}

class _CartaoState extends State<Cartao> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 70.0,
            backgroundImage: AssetImage('images/Perfil2.jpg'),
          ),
          const Text('Leone Rodrigues',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                  fontFamily: 'Pacifico',
                  fontWeight: FontWeight.bold)),
          const Text('DESENVOLVEDOR FLUTTER',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontFamily: 'Source Sans Pro',
                  fontWeight: FontWeight.w800,
                  letterSpacing: 2.0)),
          SizedBox(
                  height: 30.0,
                  width: 170.0,
                  child: Divider(color: Colors.teal.shade900,),

                  ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Card(
              child: ListTile(
                leading: const Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),
                title: Text(
                  '+ 55 91234 - 5678',
                  style: TextStyle(color: Colors.teal.shade900, fontSize: 20.0),
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
            child: Card(
              child: ListTile(
                leading: const Icon(
                  Icons.email,
                  color: Colors.teal,
                ),
                title: Text(
                  'leone@email.com',
                  style: TextStyle(color: Colors.teal.shade900, fontSize: 20.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
