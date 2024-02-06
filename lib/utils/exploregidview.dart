
import 'package:flutter/material.dart';

class ExploreGridView extends StatelessWidget {
  const ExploreGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 4.0,
        mainAxisSpacing: 4.0,
      ),
      itemCount: 20,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            color: Colors.deepPurple[200],
          ),
        );
      },
    );
  }
}
