

import 'package:flutter/material.dart';
import 'package:news_app/shared_ui/navigation_drawer.dart';

import 'home_tabs/favourites.dart';
import 'home_tabs/popular.dart';
import 'home_tabs/whats_new.dart';

class HeadLineNews extends StatefulWidget {
  @override
  _HeadLineNewsState createState() => _HeadLineNewsState();
}

class _HeadLineNewsState extends State<HeadLineNews> with SingleTickerProviderStateMixin {
  TabController _tabController ;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(initialIndex: 0,length: 3, vsync: this);
  }
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Explore"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: (){}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: (){})
        ],
        bottom: TabBar(controller: _tabController,
            indicatorColor: Colors.white,
            tabs: <Widget>[
              Tab(text: "WHAT`S NEW",),
              Tab(text: "POPULAR",),
              Tab(text: "FAVOURITES",),
            ]),
      ),
      drawer: NavigationDrawer(),

      body: TabBarView(controller: _tabController,
          children: <Widget>[
            Favourites(),
            Popular(),
            Favourites()
          ]),
    );
  }
}
