import 'package:flutter/material.dart';
import 'package:flutterprojemm/theme/light_theme.dart';

class WidgetSize extends StatefulWidget {
  const WidgetSize({Key? key}) : super(key: key);

  @override
  State<WidgetSize> createState() => _WidgetSizeState();
}

class _WidgetSizeState extends State<WidgetSize> {
  LightTheme lightTheme = LightTheme();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: lightTheme.theme.appBarTheme.backgroundColor,
      ),
      body: Card(
        child: Container(
          height: WidgetSizes.normalCardHeight.value(),
          color: Colors.indigo,
        ),
      ),
    );
  }
}

enum WidgetSizes{
  normalCardHeight, circleProfileWidth
}

extension WidgetSizesExtension on WidgetSizes{
  double value(){
    switch(this){
      case WidgetSizes.normalCardHeight:
        return 25;
        break;
      case WidgetSizes.circleProfileWidth:
        return 35;
        break;
    }
  }
}