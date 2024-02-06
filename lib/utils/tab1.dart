import 'package:flutter/material.dart';

class Tab1 extends StatelessWidget {
  Tab1({Key? key}) : super(key: key);
  final List<String> UserPost=[];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.purpleAccent,
          ),
        );
      },
    );
  }
}
