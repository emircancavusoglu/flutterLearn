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
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
         leading: const Icon(Icons.person),
        actions: const [
          Icon(Icons.notifications_none),
        ],
      ),
      body: Card(
        margin: const EdgeInsets.only(top: 20),
        child: Container(
          color: Colors.indigo,
          width: 400,
          height: 200,
          child: const Center(child: Text("245,446",style: TextStyle(fontSize: 25),)),
        ),
      ),
    );
  }
}
