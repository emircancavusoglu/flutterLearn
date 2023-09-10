import 'package:flutter/material.dart';

class ModalView extends StatefulWidget {
  const ModalView({Key? key}) : super(key: key);

  @override
  State<ModalView> createState() => _ModalViewState();
}

class _ModalViewState extends State<ModalView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Text(""),
    );
  }
}
