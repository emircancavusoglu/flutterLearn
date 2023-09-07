import 'package:flutter/material.dart';


class MySample extends StatefulWidget {
  const MySample({Key? key}) : super(key: key);

  @override
  State<MySample> createState() => _MySampleState();
}

class _MySampleState extends State<MySample> {
  late final List<CollectionModels> _items;
  @override
  void initState() {
    super.initState();
    _items = CollectionItems()._items;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return Card(
            child: SizedBox(
              height: 300,
              child: Expanded(
                child: Column(
                  children: [
                    Image.asset(_items[index].imagePath),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(_items[index].title),
                        Text('${_items[index].price}')
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
      },),
    );
  }
}
class CollectionModels{
  String imagePath;
  String title;
  double price;

  CollectionModels({required this.imagePath, required this.title, required this.price});
}


class CollectionItems {
  late final List <CollectionModels> _items;
  CollectionItems() {
    _items = [
      CollectionModels(
          imagePath: 'assets/book.png', title: "title", price: 3.4),
      CollectionModels(
          imagePath: 'assets/book.png', title: "title", price: 3.4),
      CollectionModels(imagePath: 'assets/book.png', title: "title", price: 3.4)
    ];
  }
}
