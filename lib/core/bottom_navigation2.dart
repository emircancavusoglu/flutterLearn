import 'package:flutter/material.dart';


class BottomExample2 extends StatefulWidget {
  const BottomExample2({Key? key}) : super(key: key);

  @override
  State<BottomExample2> createState() => _BottomExample2State();
}

class _BottomExample2State extends State<BottomExample2> {

  void changeColor(Color color){
    backgroundColor = color;
  }
  Color backgroundColor = Colors.transparent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value){
          if(value == 0){
            setState(() {
              changeColor(Colors.teal);
            });
          }
          else if(value == 1){
            setState(() {
              changeColor(Colors.tealAccent);
            });
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