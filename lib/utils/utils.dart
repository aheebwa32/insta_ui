import 'package:flutter/material.dart';

class Utils extends StatelessWidget {
  final String text;
  const Utils({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey,
            ),
            width: 58.0,
            height: 58.0,
            // child: Center(
            //   child: Text(
            //     text, // Use the 'text' variable passed through the constructor
            //     style: const TextStyle(
            //       color: Colors.black,
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            // ),
          ),
          const SizedBox(height: 8.0),
          Text(
            text, // Use the 'text' variable passed through the constructor
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
