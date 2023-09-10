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
    _tabController = TabController(length: _MyTabbarViews.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _MyTabbarViews.values.length,
      child: Scaffold(
        appBar: AppBar(),
        extendBody: true,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(onPressed: (){
          _tabController.animateTo(_MyTabbarViews.settings.index);
        },
          child: const Icon(Icons.add),),
        bottomNavigationBar: MyBottomAppBar(tabController: _tabController),
        body: _tabbarView(tabController: _tabController),
      ),
    );
  }
}

class MyBottomAppBar extends StatelessWidget {
  final double _notchMargin = 10;
  const MyBottomAppBar({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.blue,
      notchMargin: _notchMargin,
      shape: const CircularNotchedRectangle(),
      child: TabBar(
        unselectedLabelColor: Colors.purple,
        controller: _tabController,
        tabs: _MyTabbarViews.values.map((e) => Tab(text: e.name,)).toList()
      ),
    );
  }
}

class _tabbarView extends StatelessWidget {
  const _tabbarView({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: _tabController,
      children: [
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.yellow,
        )
      ],
    );
  }
}
enum _MyTabbarViews{
  home1,
  settings
}
