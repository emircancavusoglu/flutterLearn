import'package:flutter/material.dart';
import 'package:flutterprojemm/const/string_consts.dart';
import 'package:flutterprojemm/core/life_cycle.dart';
import 'package:flutterprojemm/core/page_view_learn.dart';
import 'package:flutterprojemm/product/customButton.dart';
import 'package:flutterprojemm/core/text_field_learn.dart';

void main() => runApp( MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // CustomButton custom = const CustomButton();
  int counter = 0;
  int _counterCustom = 0;
  void update(bool isIncrement){
    if(isIncrement){
      setState(() {
        print("basıldı");
        ++counter;
      });
    }
    else{
      setState(() {
        print("basıldı");
        --counter;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [Padding(
          padding: EdgeInsets.only(right: 16.0),
          child: Icon(Icons.add_a_photo),
        )],
      ),
      body: Column(
         children: [
           ElevatedButton(onPressed: (){
             update(true);
           }, child: const Icon(Icons.add)),
           ElevatedButton(onPressed: (){
             update(false);
           }, child: const Icon(Icons.remove)),
           const CustomButtton(),
          Center(
            child: Text(counter.toString()),
          ),
          const SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            navigateToPageView(context);
          }, child: const Text("Yeni Sayfaya Geç")),
           ElevatedButton(onPressed: (){
             navigateToLifeCycle(context);
           }, child: Text(StringConst.lifeCyle)),
           ElevatedButton(onPressed: (){
             navigateToTextField(context);
           }, child: Text(StringConst.textField))
        ],
      ),

    );
  }

  void navigateToPageView(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  PageViewLearn(message: '',),));
  }

  void navigateToLifeCycle(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  LifeCycle(name: 'Emircan',),));
  }

  void navigateToTextField(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const TextFieldLearn(),));
  }
}