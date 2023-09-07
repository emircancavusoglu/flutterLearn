import 'package:flutter/material.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({Key? key}) : super(key: key);

  @override
  State<TabLearn> createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, child: Scaffold(
      body: TabBarView(children: [
        Container(
          width: 25,
          height: 30,
          color: Colors.purple,
        ),
        Container(
          width: 25,
          height: 30,
          color: Colors.orangeAccent,
        ),
      ]),
    ));
  }
}
