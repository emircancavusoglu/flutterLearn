import 'package:flutter/material.dart';
import 'package:flutterprojemm/product/models/post_model.dart';

class PostView extends StatefulWidget {
  const PostView({Key? key}) : super(key: key);

  @override
  State<PostView> createState() => _PostViewState();
}

class _PostViewState extends State<PostView> {
  Post5 post5 = Post5(title: "Post View");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        post5.copyWith(title: "new post View");
      },),
      appBar: AppBar(),
      body: Center(
          child: Text(post5.title?? 'not has any title')),
    );
  }
}