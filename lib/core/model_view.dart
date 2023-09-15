import 'package:flutter/material.dart';
import 'package:flutterprojemm/product/models/post_model1.dart';

class ModelView extends StatefulWidget {
  const ModelView({Key? key}) : super(key: key);

  @override
  State<ModelView> createState() => _ModelViewState();
}

class _ModelViewState extends State<ModelView> {
  var user4 = Post4(userId: 1, id: 2, body: "body");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user4.title),
      ),
      body: Center(
        child: FloatingActionButton(
          onPressed: (){
            setState(() {
              user4 = user4.copyWith(title: "new Value");
              user4.changeTitle("merhaba");
            });
          },
          child: const Icon(Icons.add_circle),
        ),
      ),
    );
  }
}
