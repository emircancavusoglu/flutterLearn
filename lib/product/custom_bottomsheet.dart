import 'package:flutter/material.dart';

class CustomBottomSheet extends StatefulWidget {
  const CustomBottomSheet({Key? key}) : super(key: key);

  @override
  State<CustomBottomSheet> createState() => _CustomBottomSheetState();
}

class _CustomBottomSheetState extends State<CustomBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text("Show Bottom Sheet"),
          onPressed: (){
        showBottomSheet(
          context: context,
          builder: (context) {
          return SizedBox(
            height: 400,
            child: Center(
              child: ElevatedButton(
                child: const Text("Back"),
                onPressed: (){
                  Navigator.pop(context);
                },
              ),
            ),
          );
        },);
      },
    )
    );
  }
}
