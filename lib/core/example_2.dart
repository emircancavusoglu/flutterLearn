import 'package:flutter/material.dart';


class MySample extends StatefulWidget {
  const MySample({Key? key}) : super(key: key);

  @override
  State<MySample> createState() => _MySampleState();
}

class _MySampleState extends State<MySample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Text("sample try"),
    );
  }
}
