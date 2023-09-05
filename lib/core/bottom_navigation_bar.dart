import 'package:flutter/material.dart';
import 'package:flutterprojemm/core/life_cycle.dart';
import 'package:flutterprojemm/core/page_view_learn.dart';

class BottomNavigation extends StatefulWidget {

  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  final String home = "Home";
  final String newPage = "New Page";
  @override
  Widget build(BuildContext context) {
   return BottomNavigationBar(onTap: (int value){
     if(value == Labels.newPage.index){
       Navigator.push(context, MaterialPageRoute(builder: (context) => LifeCycle(name: "EMİRCAN"),));
     }
     else if(value == Labels.home.index){
       Navigator.push(context, MaterialPageRoute(builder: (context) => PageViewLearn(message: "merhaba"),));
     }
   }, items: <BottomNavigationBarItem>[
     BottomNavigationBarItem(icon: const Icon(Icons.account_balance),label: home),
     BottomNavigationBarItem(icon: const Icon(Icons.adb),label: newPage),
   ]
   );
  }
}
enum Labels{
 home,
 newPage
}