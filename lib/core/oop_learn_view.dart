import 'package:flutter/material.dart';

class OopLearnView extends StatefulWidget {
  const OopLearnView({Key? key}) : super(key: key);

  @override
  State<OopLearnView> createState() => _OopLearnViewState();
}

class _OopLearnViewState extends State<OopLearnView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(onPressed: (){},child: const Icon(Icons.add_circle),),

    );
  }
}
