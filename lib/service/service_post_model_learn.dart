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
  final _baseUrl = 'https://jsonplaceholder.typicode.com/';
  late final Dio _dio;
  @override
  void initState() {
    super.initState();
    _dio = Dio(BaseOptions(baseUrl: _baseUrl));
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
    final response = await _dio.get('posts');
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
  final TextEditingController titleController = TextEditingController();
  final TextEditingController bodyController = TextEditingController();
  final TextEditingController userIdController = TextEditingController();

  PostModelAdvanced({
    super.key,
    required List<PostModel>? item,
  }) : _item = item;

  final List<PostModel>? _item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            decoration: const InputDecoration(
              labelText: 'Title'
            ),
            controller: titleController,
          ),
          TextField(
            decoration:const InputDecoration(
              labelText:  'Body'
            ),
            controller: bodyController,
          ),
          TextField(
            decoration: const InputDecoration(
              labelText:  'UserId'
            ),
            controller: userIdController,
          ),
        ],
      ),
    );
  }
}
