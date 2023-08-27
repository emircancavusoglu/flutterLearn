import 'package:flutter/material.dart';


class ListViewBuilderLearn extends StatefulWidget {
  const ListViewBuilderLearn({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderLearn> createState() => _ListViewBuilderLearnState();
}

class _ListViewBuilderLearnState extends State<ListViewBuilderLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(itemBuilder: (context, index) {
        return Column(
          children: [
            const Placeholder(
              color: Colors.black,
            ),
            Text("$index"),
          ],
        );
      },),
    );
  }
}
  
class ListViewSeperated extends StatefulWidget {
  const ListViewSeperated({Key? key}) : super(key: key);

  @override
  State<ListViewSeperated> createState() => _ListViewSeperatedState();
}

class _ListViewSeperatedState extends State<ListViewSeperated> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("ListView Seperated")),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              subtitle: Text("$index"),
              title: const Text("List learn"),
            );
          },
          separatorBuilder: (context, index) => Divider(),
          itemCount: 10),
    );
  }
}

