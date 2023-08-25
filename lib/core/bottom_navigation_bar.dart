import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
   return BottomNavigationBar(items: const <BottomNavigationBarItem>[
     BottomNavigationBarItem(icon: Icon(Icons.account_balance),label: "Home"),
     BottomNavigationBarItem(icon: Icon(Icons.adb),label: "New Page"),
   ]
   );
  }
}
