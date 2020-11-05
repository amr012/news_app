import 'package:flutter/material.dart';
import 'package:news_app/screens/home_tabs/favourites.dart';
import 'package:news_app/screens/home_tabs/popular.dart';
import 'package:news_app/screens/home_tabs/whats_new.dart';
import 'package:news_app/shared_ui/navigation_drawer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

enum PopOutMenu { HELP, ABOUT, CONTACT, SETTINGS }

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 3, vsync: this);
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
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          _popOutMenu(context)
        ],
        bottom: TabBar(
            controller: _tabController,
            indicatorColor: Colors.white,
            tabs: <Widget>[
              Tab(
                text: "WHAT`S NEW",
              ),
              Tab(
                text: "POPULAR",
              ),
              Tab(
                text: "FAVOURITES",
              ),
            ]),
      ),
      drawer: NavigationDrawer(),
      body: TabBarView(
          controller: _tabController,
          children: <Widget>[WhatsNew(), Popular(), Favourites()]),
    );
  }

  Widget _popOutMenu(BuildContext context) {
    return PopupMenuButton<PopOutMenu>(
      itemBuilder: (context) {
        return [
          PopupMenuItem<PopOutMenu>(
            value: PopOutMenu.ABOUT,
            child: Text("ABOUT"),
          ),
          PopupMenuItem<PopOutMenu>(
            value: PopOutMenu.CONTACT,
            child: Text("CONTACT"),
          ),
          PopupMenuItem<PopOutMenu>(
            value: PopOutMenu.SETTINGS,
            child: Text("SETTINGS"),
          ),
          PopupMenuItem<PopOutMenu>(
            value: PopOutMenu.HELP,
            child: Text("HELP"),
          ),
        ];
      },
      onSelected: (PopOutMenu menu) {},
    );
  }
}
