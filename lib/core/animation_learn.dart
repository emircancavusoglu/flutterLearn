import 'package:flutter/material.dart';

class AnimatedLearn extends StatefulWidget {
  const AnimatedLearn({Key? key}) : super(key: key);

  @override
  State<AnimatedLearn> createState() => _AnimatedLearnState();
}


class _AnimatedLearnState extends State<AnimatedLearn> {
  bool isVisible = false;
  void changeVisible(){
    setState(() {
      isVisible = !isVisible;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(onPressed: (){
        changeVisible();
      },child: const Icon(Icons.add_circle),),
      body: const AnimatedCrossFade(
        firstChild: Placeholder(),
        secondChild: SizedBox.shrink(),
        crossFadeState: CrossFadeState.showFirst,
        duration: Duration(seconds: 1),
      ),
    );
  }
}
