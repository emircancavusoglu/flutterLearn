import 'package:flutter/material.dart';
class TabbarExample extends StatefulWidget {
  const TabbarExample({Key? key}) : super(key: key);

  @override
  State<TabbarExample> createState() => _TabbarExampleState();
}

class _TabbarExampleState extends State<TabbarExample> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: MyPages.values.length, child: Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          onTap: (int index){},
          tabs:
            MyPages.values.map((e) => Tab(text: e.name)).toList(),
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
enum MyPages{
  Home,Profile,Settings
}