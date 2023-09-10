import 'package:flutter/material.dart';
import 'package:flutterprojemm/product/models/post_model.dart';

class ModelView extends StatefulWidget {
  const ModelView({Key? key}) : super(key: key);

  @override
  State<ModelView> createState() => _ModelViewState();
}

class _ModelViewState extends State<ModelView> {
  final user4 = Post4(userId: 1, id: 2, body: "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user4.title),
      ),
      body: Text(""),
    );
  }
}
