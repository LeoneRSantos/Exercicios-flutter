import 'package:ex07/pageViews/one_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _controller = PageController();

  int indexBottomNavigationBar = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Appbar")),
      ),

      // Menu "sanduíche" que fica na appBar
      drawer: Drawer(
        child: ListView(

          children: [

            // Parte que apresenta o nome, email e foto do usuário
             const UserAccountsDrawerHeader(
              accountName: Text("Usuário"), 
              accountEmail: Text("usuario@email.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text("U", 
                  style: TextStyle(fontSize: 25.0, color: Colors.white),),
              ),

              ),

              ListTile(
                title: const Text('Item 1'),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  _controller.jumpToPage(0);
                  Navigator.pop(context);
                  setState(() {
                    indexBottomNavigationBar = 0;
                  });
                }, 
              ),

              ListTile(
                title: const Text('Item 2'),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  _controller.jumpToPage(1);
                  Navigator.pop(context);
                  setState(() {
                    indexBottomNavigationBar = 1;
                  });
                },
                
              ),

              ListTile(
                title: const Text('Item 3'),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  _controller.jumpToPage(2);
                  Navigator.pop(context);
                  setState(() {
                    indexBottomNavigationBar = 2;
                  });
                },
              ),
          ],
        ),

      ),

      body: PageView(
        controller: _controller,

        children: [
          const OnePage(),
          Container(color: Colors.orange,),
          Container(color: Colors.cyan,),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexBottomNavigationBar,

        onTap: (int index) {
          setState(() {
            indexBottomNavigationBar = index;
          });

          _controller.animateToPage(index, 
          duration: const Duration(milliseconds: 300), 
          curve: Curves.ease);
        }, 
        
        items: const [

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