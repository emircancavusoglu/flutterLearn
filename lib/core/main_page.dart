import 'package:flutter/material.dart';
import 'package:flutterprojemm/core/bottom_navigation_bar.dart';
import 'package:flutterprojemm/core/list_view.dart';
import 'package:flutterprojemm/core/list_view_builder.dart';
import 'package:flutterprojemm/core/navigator.dart';
import 'package:flutterprojemm/core/page_view_learn.dart';
import 'package:flutterprojemm/core/text_field_learn.dart';
import 'package:flutterprojemm/tabbar.dart';
import '../const/strings.dart';
import '../product/customButton.dart';
import 'example_design.dart';
import 'life_cycle.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key, required this.color1}) : super(key: key);
  final Color color1;


  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with NavigatorManager{
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
          child: Icon(Icons.accessibility),
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
              navigateToWidget(context, PageViewLearn(message: "PageViewExample"));
            }, child: const Text("Yeni Sayfaya Geç")),
            ElevatedButton(onPressed: (){
              navigateToWidget(context, LifeCycle(name: "Emircan"));
            }, child: Text(StringConst().lifeCyle)),
            ElevatedButton(onPressed: (){
              navigateToWidget(context, const TextFieldLearn());
            }, child: Text(StringConst().textField)),
            ElevatedButton(onPressed: (){
              navigateToWidget(context, const ListViewLearn());
            }, child: Text(StringConst().listView)),
            ElevatedButton(onPressed: (){
              navigateToWidget(context, const ListViewBuilderLearn());
            }, child: Text(StringConst().listViewBuilder)),
            ElevatedButton(onPressed: (){
              navigateToWidget(context, const ListViewSeperated());
              }, child: Text(StringConst().listViewSeperated)),
            ElevatedButton(onPressed: (){
              navigateToWidget(context, const NavigatorView());
              // Navigator.of(context).push(MaterialPageRoute(builder: (context) => const NavigatorView(),));
            }, child: const Text("Navigator")),
            ElevatedButton(onPressed: (){
              navigateToWidget(context, const ExampleApp());
            }, child: const Text("Example Design")),
            ElevatedButton(onPressed: (){
              navigateToWidget(context, const TabbarExample());
            }, child: const Text("Tabbar Learn"))
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavigation(),
    );
  }


}
