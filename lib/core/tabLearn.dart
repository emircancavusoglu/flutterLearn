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
      appBar: AppBar(
        bottom: const TabBar(tabs: [
          Tab(text: "Page1",),
          Tab(text: "Page2",)
        ]),
      ),
      body: TabBarView(children: [
        Container(
          width: SampleApp.width,
          height: SampleApp.height,
          color: Colors.purple,
        ),
        Container(
          width: SampleApp.width,
          height: SampleApp.height,
          color: Colors.orangeAccent,
        ),
      ]),
    ));
  }
}

class SampleApp{
  static const double width = 25;
  static const double height = 30;
}