import 'package:flutter/material.dart';
import 'package:flutterprojemm/core/list_view.dart';


class NavigatorView extends StatefulWidget {
  const NavigatorView({Key? key}) : super(key: key);

  @override
  State<NavigatorView> createState() => _NavigatorViewState();
}

class _NavigatorViewState extends State<NavigatorView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigator"),
      ),
      body: Center(
        child: Container(
          width:  200,
          height: 100,
          color: Colors.blueAccent,
          child: Align(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: IconButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ListViewLearn() ,));
                  }, icon: const Icon(Icons.chevron_right_outlined)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

