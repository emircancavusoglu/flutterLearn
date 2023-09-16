import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class PackageLearn extends StatefulWidget {
  const PackageLearn({Key? key}) : super(key: key);

  @override
  State<PackageLearn> createState() => _PackageLearnState();
}

class _PackageLearnState extends State<PackageLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SpinKitFadingCircle(
        itemBuilder: (BuildContext context, int index) {
      return DecoratedBox(
        decoration: BoxDecoration(
          color: index.isEven ? Colors.red : Colors.green,
        ),
      );
    },
    ),
    );
  }
}
