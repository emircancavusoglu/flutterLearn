import 'package:flutter/material.dart';


class BottomExample2 extends StatefulWidget {
  const BottomExample2({Key? key}) : super(key: key);

  @override
  State<BottomExample2> createState() => _BottomExample2State();
}

class _BottomExample2State extends State<BottomExample2> {

  void changeColor(Color color){
    setState(() {
      _backgroundColor = color;
    });
    }
  Color _backgroundColor = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backgroundColor,
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int value){
          if(value == MyColors.teal.index){
            changeColor(Colors.teal);
          }
          else if(value == MyColors.tealAccent.index){
            changeColor(Colors.tealAccent);
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.change_circle_rounded), label: "Change"),
          BottomNavigationBarItem(icon: Icon(Icons.change_circle_rounded), label: "Add"),
        ],
      ),
    );
  }
}
enum MyColors{
  teal, tealAccent
}