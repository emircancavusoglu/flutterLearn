import 'package:flutter/material.dart';
import 'package:flutterprojemm/product/models/post_model1.dart';

class PostView extends StatefulWidget {
  const PostView({Key? key}) : super(key: key);

  @override
  State<PostView> createState() => _PostViewState();
}

class _PostViewState extends State<PostView> {
  Post5 post5 = Post5(body: "Post View");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          post5.copyWith(body: "new post View");
          post5.updateTitle("new body");
        });
        },),
      appBar: AppBar(),
      body: Center(
          child: Text(post5.body?? 'not has any title')),
    );
  }
}