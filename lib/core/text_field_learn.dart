import 'package:flutter/material.dart';

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({Key? key}) : super(key: key);

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            decoration: const InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(2.0)))),
            buildCounter: (context, {int? currentLength, bool? isFocused, int? maxLength}) =>
            AnimatedContainer(
              duration: const Duration(milliseconds: 21),
              height: 10,
              width: 20.0 * (currentLength ?? 0),
              color: Colors.deepOrange,
            ),
            keyboardType: TextInputType.name,
            autofillHints: const [AutofillHints.name],
          )
        ],
      ),
    );
  }
}
