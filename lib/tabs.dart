import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';


// Main code for all the tabs
class MyTabs extends StatefulWidget {
  @override
  MyTabsState createState() => MyTabsState();
}

class MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin {
  static final homePageKey = GlobalKey<MyTabsState>();
  late TabController tabcontroller;

  @override
  void initState() {
    super.initState();
    tabcontroller = TabController(vsync: this, length: 5);
  }

  @override
  void dispose() {
    super.dispose();
    tabcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: homePageKey,
      appBar: AppBar(
        title:  const Image(
          width: 150,
          height: 50,
          fit: BoxFit.cover,
          image:AssetImage(
              'assets/images/appbarlogo.png'),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.videocam),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person),
          ),
        ],
      ),
      bottomNavigationBar: Material(
          child: TabBar(
              controller: tabcontroller,
              unselectedLabelColor: Colors.grey,
              labelColor: Colors.redAccent[700],
              labelStyle: const TextStyle(fontSize: 11.0),
              tabs: <Tab>[
                const Tab(
                  icon: Icon(Icons.home),
                  text: "Home",
                ),
                const Tab(
                  icon: Icon(Icons.whatshot),
                  text: "Trending",
                ),
                Tab(
                  icon: new Icon(Icons.subscriptions),
                  text: "Subscriptions",
                ),
                const Tab(
                  icon: Icon(Icons.inbox),
                  text: "Inbox",
                ),
                const Tab(
                  icon: Icon(Icons.folder),
                  text: "Library",
                ),
              ])),
      body: TabBarView(controller: tabcontroller, children:  <Widget>[
        // All the Class goes here
        Home(),
        // Trending(),
        // Subscriptioins(),
        // Inbox(),
        // Library()
      ]),
    );
  }
}