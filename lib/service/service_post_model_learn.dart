import 'dart:convert';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutterprojemm/service/post_model.dart';

class ServiceLearn extends StatefulWidget {
  const ServiceLearn({Key? key}) : super(key: key);

  @override
  State<ServiceLearn> createState() => _ServiceLearnState();
}

class _ServiceLearnState extends State<ServiceLearn> {
  @override
  void initState() {
    super.initState();
    fetchItems();
  }

  bool isLoading = false;
  void _changeStatus(){
    setState(() {
      isLoading = !isLoading;
    });
  }
  List<PostModel>? _item;
  Future<void> fetchItems() async{
    _changeStatus();
    final response = await Dio().get('https://jsonplaceholder.typicode.com/posts');
    if(response.statusCode == 200){
      final _myDatas = response.data;
      if(_myDatas is List){
        setState(() {
          _item = _myDatas.map((e) => PostModel.fromJson(e)).toList();
        });
      }
    }
    _changeStatus();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PostModelAdvanced(item: _item),
    );
  }
}

class PostModelAdvanced extends StatelessWidget {
  const PostModelAdvanced({
    super.key,
    required List<PostModel>? item,
  }) : _item = item;

  final List<PostModel>? _item;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _item?.length ?? 0,
      itemBuilder: (context, index) {
      return Card(
        child: ListTile(
          title: Text(_item?[index].title ?? ""),
          subtitle: Text(_item?[index].body ?? ""),
        ),
      );
    },);
  }
}
