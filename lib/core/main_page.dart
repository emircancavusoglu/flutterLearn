import 'package:flutter/material.dart';
import 'package:flutterprojemm/core/bottom_navigation2.dart';
import 'package:flutterprojemm/core/bottom_navigation_bar.dart';
import 'package:flutterprojemm/core/example_2.dart';
import 'package:flutterprojemm/core/list_view.dart';
import 'package:flutterprojemm/core/list_view_builder.dart';
import 'package:flutterprojemm/core/model_view.dart';
import 'package:flutterprojemm/core/navigator.dart';
import 'package:flutterprojemm/core/page_view_learn.dart';
import 'package:flutterprojemm/core/post_view.dart';
import 'package:flutterprojemm/core/text_field_learn.dart';
import 'package:flutterprojemm/core/tabbar.dart';
import 'package:flutterprojemm/product/custom_bottomsheet.dart';
import 'package:flutterprojemm/service/service_view.dart';
import '../const/strings.dart';
import '../product/customButton.dart';
import 'bottomAppBar.dart';
import 'example_design.dart';
import 'life_cycle.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key, required this.color1}) : super(key: key);
  final Color color1;


  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with NavigatorManager{
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
          child: Icon(Icons.accessibility),
        )],
      ),
      body: Container(
        color: widget.color1,
        width: double.infinity,
        height: double.infinity,
        child: FittedBox(
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
                navigateTextField(context);
              }, child: Text(StringConst().textField)),

              ElevatedButton(onPressed: (){
                navigateListView(context);
              }, child: Text(StringConst().listView)),

              ElevatedButton(onPressed: (){
                navigateListViewBuilder(context);
              }, child: Text(StringConst().listViewBuilder)),

              ElevatedButton(onPressed: (){
                navigateListViewSeperated(context);
                }, child: Text(StringConst().listViewSeperated)),

              ElevatedButton(onPressed: (){
                navigateNavigatorView(context);
              }, child: Text(StringConst().navigator)),

              ElevatedButton(onPressed: (){
                navigateToWidget(context, const ExampleApp());
              }, child: Text(StringConst().exampleDesign)),

              ElevatedButton(onPressed: (){
                navigateToWidget(context, const TabbarExample());
              }, child: Text(StringConst().tabbarLearn)),

              ElevatedButton(onPressed: (){
                navigateToWidget(context, const PostView());
              }, child: Text(StringConst().postView)),

              ElevatedButton(onPressed: (){
                navigateToWidget(context, const BottomExample2());
              }, child: Text(StringConst().bottomNavigation)),

              ElevatedButton(onPressed: (){
                navigateToWidget(context, const MySample());
              }, child: Text(StringConst().sample)),

              ElevatedButton(onPressed: (){
                navigateToWidget(context, const CustomBottomAppBar());
              }, child: Text(StringConst().bottomNavigation)),
              ElevatedButton(onPressed: (){
                navigateToWidget(context, const CustomBottomSheet());
              }, child: const Text("BottomSheet")),
              ElevatedButton(onPressed: (){
                navigateToWidget(context, const ModelView());
              }, child: const Text("ModelView")),
              ElevatedButton(onPressed: (){
                navigateToWidget(context, const ServiceView());
              }, child: const Text("Post Model View"))
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }

  void navigateNavigatorView(BuildContext context) {
    navigateToWidget(context, const NavigatorView());
  }

  void navigateListViewSeperated(BuildContext context) {
    navigateToWidget(context, const ListViewSeperated());
  }

  void navigateListViewBuilder(BuildContext context) {
    navigateToWidget(context, const ListViewBuilderLearn());
  }

  void navigateListView(BuildContext context) {
    navigateToWidget(context, const ListViewLearn());
  }

  void navigateTextField(BuildContext context) {
    navigateToWidget(context, const TextFieldLearn());
  }
}
