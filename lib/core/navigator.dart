import 'package:flutter/material.dart';
import 'package:flutterprojemm/const/colors.dart';

class Navigator extends StatefulWidget {
  const Navigator({Key? key}) : super(key: key);

  @override
  State<Navigator> createState() => _NavigatorState();
}

class _NavigatorState extends State<Navigator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: 200,
        height: 250,
        color: MyColors.purple,
      ),
    );
  }
}
