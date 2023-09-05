import 'package:flutter/material.dart';


class BottomExample2 extends StatefulWidget {
  const BottomExample2({Key? key}) : super(key: key);

  @override
  State<BottomExample2> createState() => _BottomExample2State();
}

class _BottomExample2State extends State<BottomExample2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value){

        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.change_circle_rounded), label: "Change"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Add"),
        ],
      ),
    );
  }
}
