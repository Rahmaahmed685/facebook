import 'package:facebook/screens/Reels_screen.dart';
import 'package:facebook/screens/list_screen.dart';
import 'package:facebook/screens/messenger_screen.dart';
import 'package:facebook/screens/notifacation.dart';
import 'package:facebook/screens/people_screen.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class MainHome extends StatefulWidget {
  const MainHome({super.key});

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  final tabs = [
    HomeScreen(),
    PeopleScreen(),
    ReelsScreen(),
    NotifacationScreen(),
    ListScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: tabs.length,
        child:  Scaffold(
          appBar: AppBar(
            title: Text('facebook',
              style: TextStyle(color: Colors.blue[800],
                  fontWeight: FontWeight.w500,
                  fontSize: 33
              ),
            ),
            actions: [
              InkWell(
                onTap: () {
                },
                child: Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[200],
                  ),
                  child: Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(width: 5,),
              InkWell(
                onTap: () {
                },
                child: Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[200],
                  ),
                  child: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(width: 5,),
              InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context)=> MessengerScreen()));
                  },
                  child:Image.asset
                    ('lib/images/73fb727d03629c29a493de4bf4a6863f-message-alert-icon-flat.png')
              ),
            ],
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home),),
                Tab(icon: Icon(Icons.people),),
                Tab(icon: Icon(Icons.ondemand_video_outlined),),
                Tab(icon: Icon(Icons.notifications_none_outlined),),
                Tab(icon: Icon(Icons.list),),
              ],
            ),

            //leading: Icon(Icons.facebook,color: Colors.blue,),
          ),
    body: TabBarView(
    children: tabs
    ),
    ),
    );
  }
}
