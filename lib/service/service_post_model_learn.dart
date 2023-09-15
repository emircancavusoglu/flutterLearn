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

  List<PostModel>? _item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PostModelAdvanced(item: _item),
    );
  }
}

class PostModelAdvanced extends StatefulWidget {

  PostModelAdvanced({
    super.key,
    required List<PostModel>? item,
  }) : _item = item;

  final List<PostModel>? _item;

  @override
  State<PostModelAdvanced> createState() => _PostModelAdvancedState();
}

class _PostModelAdvancedState extends State<PostModelAdvanced> {
  List<PostModel>? _item;
  final _baseUrl = 'https://jsonplaceholder.typicode.com/';
  late final Dio _dio;
  late String name = "emircan";
  bool isLoading = false;
  @override
  void initState() {
    super.initState();
    _dio = Dio(BaseOptions(baseUrl: _baseUrl));
    fetchItems();
  }
  void _changeStatus(){
    setState(() {
      isLoading = !isLoading;
      name = "mehmet";
    });
  }
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

  Future<void> _addItem(PostModel postModel) async {
    _changeStatus();
    final response = await _dio.post(PostServicePath.posts.name,data: postModel);
    if(response.statusCode == HttpStatus.ok){
      name = "Basarili";
    }
    _changeStatus();
  }

  final TextEditingController titleController = TextEditingController();
  final TextEditingController bodyController = TextEditingController();
  final TextEditingController userIdController = TextEditingController();

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
            textInputAction: TextInputAction.next,
            keyboardType: TextInputType.number,
            controller: userIdController,
          ),
          TextButton(onPressed:
              isLoading ? null :
              (){
            if(titleController.text.isNotEmpty&& bodyController.text.isNotEmpty
            &&userIdController.text.isNotEmpty){
              final model = PostModel(userId: int.tryParse(userIdController.text),
                title: titleController.text,
                body: bodyController.text,
              );
              _addItem(model);
            }
          }, child: const Text('Send')),
        ],
      ),
    );
  }
}
enum PostServicePath{
  posts,comments
}