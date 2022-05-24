import 'package:ex07/pageViews/one_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

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