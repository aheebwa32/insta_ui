import 'package:flutter/material.dart';

class UserPost extends StatelessWidget {
  final String name;
  const UserPost({Key? key, required this.name}) : super(key: key); // Corrected the constructor

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                ),
                height: 50.0,
                width: 50.0,
              ),
              const SizedBox(
                width: 8.0,
              ),
              Text(
                name,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 120,
          color: Colors.blueGrey,
        ),
        const SizedBox(height: 8.0),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite),
                  SizedBox(width: 12.0),
                  Icon(Icons.chat_bubble),
                  SizedBox(width: 12.0),
                  Icon(Icons.share),
                ],
              ),
              Icon(Icons.bookmark),
            ],
          ),
        ),
        const SizedBox(height: 8.0),
        const Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: Row(
            children: [
              Text('Liked by '),
              Text(
                'friend1 and Others',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 4.0),
          child: RichText(
            text: const TextSpan(
              children: [
                TextSpan(text: 'him: ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15.0)),
                TextSpan(text: 'Living lavida without the loca'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
