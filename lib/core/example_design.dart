import 'package:flutter/material.dart';

class ExampleApp extends StatelessWidget {
  const ExampleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.chevron_left),
        actions: const [
          Icon(Icons.more_horiz),
        ],
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 500,
            color: Colors.limeAccent,
            child: Card(
              margin: const EdgeInsets.all(100),
              child: Image.asset('assets/book.png'),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(onPressed: (){},
                backgroundColor: Colors.white,
                child: const Icon(Icons.audiotrack_sharp,color: Colors.grey,),),
              FloatingActionButton(onPressed: (){},
                backgroundColor: Colors.white,
                child: const Icon(Icons.bluetooth_audio,color: Colors.grey,),),
              FloatingActionButton(onPressed: (){},
                backgroundColor: Colors.white,
                child: const Icon(Icons.autorenew_sharp,color: Colors.grey,),)
            ],
          )
        ],
      )
    );
  }
}
