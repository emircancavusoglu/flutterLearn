// import 'package:universal_html/html.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutterprojemm/service/post_model.dart';

class ServiceView extends StatefulWidget {
  const ServiceView({Key? key}) : super(key: key);

  @override
  State<ServiceView> createState() => _ServiceViewState();
}

class _ServiceViewState extends State<ServiceView> {
  List<PostModel>? _items;

  @override
  void initState(){
    super.initState();
    fetchPostItems();
  }

  Future<void> fetchPostItems() async{
   final response = await Dio().get('https://jsonplaceholder.typicode.com/posts');
   if(response.statusCode == 200){
     final _datas = response.data;
     if(_datas is List){
       setState(() {
         _items = _datas.map((e) =>
             PostModel.fromJson(e)).toList(); //create new list because of the map
       });
       }
   }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        itemCount: _items?.length ?? 0,
        itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.only(bottom: 20),
          child: ListTile(
            title: Text(_items?[index].title ?? ''),
            subtitle: Text(_items?[index].body ?? ''),
          ),
        );
      },),
    );
  }
}
