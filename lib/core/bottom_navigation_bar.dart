import 'package:flutter/material.dart';
import 'package:flutterprojemm/core/life_cycle.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
   return BottomNavigationBar(onTap: (value){
     if(value == Labels.newPage.index){
       Navigator.push(context, MaterialPageRoute(builder: (context) => LifeCycle(name: "EMİRCAN"),));
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