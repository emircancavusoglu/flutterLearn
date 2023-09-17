import 'package:flutter/material.dart';

class InvestmentApp extends StatefulWidget {
  const InvestmentApp({Key? key}) : super(key: key);

  @override
  State<InvestmentApp> createState() => _InvestmentAppState();
}

class _InvestmentAppState extends State<InvestmentApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         actions: const [
          Icon(Icons.person),
        ],
      ),
    );
  }
}
