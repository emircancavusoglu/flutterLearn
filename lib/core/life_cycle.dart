import 'package:flutter/material.dart';

class LifeCycle extends StatefulWidget {
  String name;
  LifeCycle({Key? key, required this.name}) : super(key: key);

  @override
  State<LifeCycle> createState() => _LifeCycleState();
}

class _LifeCycleState extends State<LifeCycle> {
  late String _name;
  String newName = "emo";
  @override
  void initState() {
    super.initState();
    assignName();

  }

  void assignName() {
    _name = widget.name;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(_name)),
          ElevatedButton(onPressed: (){
            setState(() {
              _name = newName;
            });

          }, child: const Text("Chane this message")),
        ],
      ),
    );
  }
}
