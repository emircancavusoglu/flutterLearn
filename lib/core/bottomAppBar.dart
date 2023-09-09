import 'package:flutter/material.dart';

class CustomBottomAppBar extends StatefulWidget {
  const CustomBottomAppBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomAppBar> createState() => _CustomBottomAppBarState();
}

class _CustomBottomAppBarState extends State<CustomBottomAppBar> with TickerProviderStateMixin {
  late final TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: MyTabbarViews.values.length,
      child: Scaffold(
        extendBody: true,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(onPressed: (){
          _tabController.animateTo(1);
        },
          child: const Icon(Icons.add),),
        bottomNavigationBar: BottomAppBar(
          color: Colors.blue,
          notchMargin: 10,
          shape: const CircularNotchedRectangle(),
          child: TabBar(
            unselectedLabelColor: Colors.purple,
            controller: _tabController,
            tabs: const [
              Tab(
                text: "Page 1",
              ),
              Tab(
                text: "Page 2",
              )
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            Container(
              color: Colors.red,
            ),
            Container(
              color: Colors.yellow,
            )
          ],
        ),
      ),
    );
  }
}
enum MyTabbarViews{
  page1,
  page2
}