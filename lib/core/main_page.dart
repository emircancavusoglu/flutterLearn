import 'package:flutter/material.dart';
import 'package:flutterprojemm/core/bottom_navigation_bar.dart';
import 'package:flutterprojemm/core/list_view.dart';
import 'package:flutterprojemm/core/list_view_builder.dart';
import 'package:flutterprojemm/core/page_view_learn.dart';
import 'package:flutterprojemm/core/text_field_learn.dart';
import '../const/string_consts.dart';
import '../product/customButton.dart';
import 'life_cycle.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key, required this.color1}) : super(key: key);
  final Color color1;


  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // CustomButton custom = const CustomButton();
  int counter = 0;
  void update(bool isIncrement){
    if(isIncrement){
      setState(() {
        ++counter;
      });
    }
    else{
      setState(() {
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
      body: Container(
        color: widget.color1,
        width: double.infinity,
        height: double.infinity,
        child: Column(
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
            }, child: Text(StringConst().lifeCyle)),
            ElevatedButton(onPressed: (){
              navigateToTextField(context);
            }, child: Text(StringConst().textField)),
            ElevatedButton(onPressed: (){
              navigateToListView(context);
            }, child: Text(StringConst().listView)),
            ElevatedButton(onPressed: (){
              navigateToListViewBuilder(context);
            }, child: Text(StringConst().listViewBuilder)),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }

  void navigateToListViewBuilder(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const ListViewBuilderLearn(),));
  }

  void navigateToListView(BuildContext context) {

    Navigator.push(context, MaterialPageRoute(builder: (context) => const ListViewLearn(),));

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
