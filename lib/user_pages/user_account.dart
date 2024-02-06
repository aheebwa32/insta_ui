import 'package:flutter/material.dart';
import 'package:instagram_clone/utils/utils.dart';

import '../utils/tab1.dart';
import '../utils/tab2.dart';
import '../utils/tab3.dart';
import '../utils/tab4.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({Key? key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(shape: BoxShape.circle),
                    ),
                    const Expanded(
                      child: Column(
                        children: [
                          Text(
                            '100',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Text('Posts')
                        ],
                      ),
                    ),
                    const Expanded(
                      child: Column(
                        children: [
                          Text(
                            '1000',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Text('Followers')
                        ],
                      ),
                    ),
                    const Expanded(
                      child: Column(
                        children: [
                          Text(
                            '50',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Text('Following')
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'aheebwa',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 2.0),
                      child: Text('I am him'),
                    ),
                    Text(
                      'youtube.com',
                      style: TextStyle(color: Colors.purple),
                    ),
                  ],
                ),
              ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 20.0),
               child: Row(
                 children: [
                   Expanded(
                     child: Container(
                       child: Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: ElevatedButton(
                           onPressed: () {},
                           child: const Text('Edit Profile'),
                         ),
                       ),
                     ),
                   ),
                   Expanded(
                     child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: ElevatedButton(
                         onPressed: () {},
                         child: const Text('Share Profile'),
                       ),
                     ),
                   ),
                   Expanded(
                     child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: ElevatedButton(
                         onPressed: () {},
                         child: const Text('Edit Profile'),
                       ),
                     ),
                   ),
                 ],
               ),
             ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: Row(
                  children: [
                    Utils(text: 'story 1'),
                    Utils(text: 'story 1'),
                    Utils(text: 'story 1'),
                    Utils(text: 'story 1'),
                    Utils(text: 'story 1')
                  ],
                ),
              ),
              const TabBar(
                tabs: [
                  Tab(
                      icon: Icon(
                    Icons.grid_4x4_outlined,
                    color: Colors.black,
                  )),
                  Tab(
                      icon:
                          Icon(Icons.video_call_outlined, color: Colors.black)),
                  Tab(icon: Icon(Icons.shop, color: Colors.black)),
                  Tab(icon: Icon(Icons.person, color: Colors.black)),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context)
                    .size
                    .height, // Adjust the height as needed
                child: TabBarView(
                  children: [
                    Tab1(),
                    Tab2(),
                    Tab3(),
                    Tab4(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
