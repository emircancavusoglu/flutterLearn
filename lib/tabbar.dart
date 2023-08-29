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
        bottom: const TabBar(
          tabs: [
            Tab(icon: Icon(Icons.looks_one_sharp),),
            Tab(icon: Icon(Icons.two_mp),),
            Tab(icon: Icon(Icons.three_mp),
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
enum MyPages{
  home,profile,settings

}