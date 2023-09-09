import 'package:flutter/material.dart';

class CustomButtton extends StatefulWidget {
  const CustomButtton({Key? key}) : super(key: key);

  @override
  State<CustomButtton> createState() => _CustomButttonState();
}

class _CustomButttonState extends State<CustomButtton> {
  int _counterCustom = 0;
  void _update(){
    setState(() {
      print("pushed");
      _counterCustom++;
    });

  }
  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){
      print("pushed");
      _update();
    }, child: Text(_counterCustom.toString()));
  }
}
