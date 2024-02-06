import 'package:flutter/material.dart';
import 'package:instagram_clone/utils/user_posts.dart';

class Tab4 extends StatelessWidget {
  Tab4({Key? key}) : super(key: key);
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
            color: Colors.blueGrey,
          ),
        );
      },
    );
  }
}
