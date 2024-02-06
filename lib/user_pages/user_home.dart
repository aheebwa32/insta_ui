import 'package:flutter/material.dart';
import '../utils/user_posts.dart';
import '../utils/utils.dart';

class UserHome extends StatelessWidget {
  UserHome({Key? key});

  final List<String> people = ['one', 'two', 'three', 'four', 'five', 'six'];
  final List<String> names = ['Alice', 'Bob', 'Charlie', 'David', 'Emma', 'Frank'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Instagram',
              style: TextStyle(color: Colors.black),
            ),
            Row(
              children: [
                Icon(Icons.add),
                Icon(Icons.favorite),
                Icon(Icons.share),
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          // STORIES
          Container(
            height: 125,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: people.length,
              itemBuilder: (BuildContext context, int index) {
                return Utils(text: people[index]);
              },
            ),
          ),
          // USER POSTS
          Expanded(
            child: ListView.builder(
              itemCount: names.length, // Specify the itemCount
              itemBuilder: (BuildContext context, int index) {
                return UserPost(name: names[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
