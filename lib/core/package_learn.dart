import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutterprojemm/package/loading_bar.dart';

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
      body: const LoadingBar(),
    );
  }
}
