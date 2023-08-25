import 'package:flutter/material.dart';
import 'package:flutterprojemm/const/string_consts.dart';

class PageViewLearn extends StatefulWidget {
  PageViewLearn({Key? key, required this.message}) : super(key: key);
  String message = "Selam";

  @override
  State<PageViewLearn> createState() => _PageViewLearnState();
}

class _PageViewLearnState extends State<PageViewLearn> {
  int currentPage = 0;

  void changePage(int index) {
    setState(() {
      currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(StringConst.title),
      ),
      body: Stack(
        children: [
          PageView(
            children: [
              Container(
                color: Colors.deepPurple,
                child: Text(widget.message),
              ),
              Container(
                color: Colors.amber,
              ),
              Container(
                color: Colors.blue,
              ),
            ],
          ),
          Positioned(
            bottom: 16.0,
            right: 16.0,
            child: FloatingActionButton(
              onPressed: () {

              },
              child: const Icon(Icons.keyboard_arrow_right_sharp),
            ),
          ),

        ],
      ),
    );
  }
}

void main() => runApp( MaterialApp(home: PageViewLearn(message: 'selam',)));
