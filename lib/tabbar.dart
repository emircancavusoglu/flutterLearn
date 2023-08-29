import 'package:flutter/material.dart';
class TabbarExample extends StatefulWidget {
  const TabbarExample({Key? key}) : super(key: key);

  @override
  State<TabbarExample> createState() => _TabbarExampleState();
}

class _TabbarExampleState extends State<TabbarExample> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3, child: Scaffold(
      appBar: AppBar(
        bottom: const TabBar(
          tabs: [
            Tab(icon: Icon(Icons.ac_unit),),
            Tab(icon: Icon(Icons.ac_unit),),
            Tab(icon: Icon(Icons.ac_unit),
            )
          ],
        ),
      ),
    body: const TabBarView(
      children: [
        Center(child: Text("First Page")),
        Center(child: Text("Second Page")),
        Center(child: Text("Third Page")),
      ],
    ),
    ),
    );
  }
}
