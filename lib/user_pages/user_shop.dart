import 'package:flutter/material.dart';
import 'package:instagram_clone/utils/exploregidview.dart';

class UserShop extends StatelessWidget {
  const UserShop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Container(
            color: Colors.blueGrey,
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                Container(
                  child: const Text(
                    'search',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                Icon(
                  Icons.search,
                  color: Colors.grey[600],
                )
              ],
            ),
          ),
        ),
      ),
      body: const ExploreGridView(),
    );
  }
}
