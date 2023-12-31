import'package:flutter/material.dart';
import 'core/main_page.dart';

void main() => runApp( MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        tabBarTheme: const TabBarTheme(
          labelColor: Colors.redAccent,
          indicatorColor: Colors.blueAccent,
          unselectedLabelColor: Colors.purple
        )
      ),
      debugShowCheckedModeBanner: false,
      home: const MainScreen(color1: Colors.redAccent,),
    );
  }
}

