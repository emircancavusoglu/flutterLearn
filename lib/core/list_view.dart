import 'package:flutter/material.dart';
import 'package:flutterprojemm/const/colors.dart';


class ListViewLearn extends StatefulWidget {
  const ListViewLearn({Key? key}) : super(key: key);

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          FittedBox(
            child: Text("ListView Learn",
              style: Theme.of(context).textTheme.displayMedium,),
          ),
          const Divider(),
          Container(
            height: 100,
            width: 50,
            color: Colors.redAccent,
          ),
          const Divider(),
          Container(
            height: 200,
            width: 50,
            color: Colors.limeAccent,
          ),
         SizedBox(
           height: 300,
           child: ListView(
             scrollDirection: Axis.horizontal,
             children: [
               Container(
                 width: 20,
                 height: 20,
                 color: MyColors.purple,
               ),
               Container(
                 width: 20,
                 height: 20,
                 color: MyColors.redAccent,
               ),
               Container(
                 width: 20,
                 height: 20,
                 color: MyColors.purple,
               )
             ],
           ),
         )
        ],
      ),

    );
  }
}
