import 'package:flutter/material.dart';
import 'package:flutterprojemm/core/life_cycle.dart';
import 'package:flutterprojemm/core/page_view_learn.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
   return BottomNavigationBar(onTap: (int value){
     if(value == Labels.newPage.index){
       Navigator.push(context, MaterialPageRoute(builder: (context) => LifeCycle(name: "EMİRCAN"),));
     }
     else if(value == Labels.home.index){
       Navigator.push(context, MaterialPageRoute(builder: (context) => PageViewLearn(message: "merhaba"),));
     }
   }, items: const <BottomNavigationBarItem>[
     BottomNavigationBarItem(icon: Icon(Icons.account_balance),label: "Home"),
     BottomNavigationBarItem(icon: Icon(Icons.adb),label: "New Page"),
   ]
   );
  }
}
enum Labels{
 home,
 newPage
}