
import 'package:flutter/material.dart';
import 'package:instagram_clone/user_pages/user_account.dart';
import 'package:instagram_clone/user_pages/user_home.dart';

import '../user_pages/user_search.dart';
import '../user_pages/user_shop.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {
  int selectedIndex=0;
  void navigationBottomBar(int Index){
    setState((){
      selectedIndex=Index;
    });
  }
  final List<Widget> _children = [

     UserHome(),
    const UserSearch(),
    const UserShop(),
    Placeholder(),
    const UserAccount(),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: _children[selectedIndex],
      bottomNavigationBar:BottomNavigationBar(
        onTap: navigationBottomBar,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.add),label: 'Add'),
          BottomNavigationBarItem(icon: Icon(Icons.video_call_outlined),label: 'Reels'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Account')
        ],
      )
    );
  }
}
