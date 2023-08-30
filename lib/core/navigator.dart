import 'package:flutter/material.dart';
import 'package:flutterprojemm/const/strings.dart';
import 'package:flutterprojemm/core/list_view.dart';


class NavigatorView extends StatefulWidget {
  const NavigatorView({Key? key}) : super(key: key);

  @override
  State<NavigatorView> createState() => _NavigatorViewState();
}

class _NavigatorViewState extends State<NavigatorView> with NavigatorManager {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringConst().navigator),
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
                    navigateToWidget(context,const ListViewLearn());
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
mixin NavigatorManager{
  void navigateToWidget(BuildContext context, Widget widget){
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return widget;
    },));
  }
}
