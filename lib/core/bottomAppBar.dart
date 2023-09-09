import 'package:flutter/material.dart';

class CustomBottomAppBar extends StatefulWidget {
  const CustomBottomAppBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomAppBar> createState() => _CustomBottomAppBarState();
}

class _CustomBottomAppBarState extends State<CustomBottomAppBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        extendBody: true,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(onPressed: (){},
          child: const Icon(Icons.add),),
        bottomNavigationBar: const BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: TabBar(
            tabs: [
              Tab(
                text: "Page 1",
              ),
              Tab(
                text: "Page 2",
              )
            ],
          ),
        ),
      ),

    );
  }
}
