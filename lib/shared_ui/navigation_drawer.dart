import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/nav_menu.dart';
import 'package:news_app/screens/facebook_feed.dart';
import 'package:news_app/screens/headline_news.dart';
import 'package:news_app/screens/home_screen.dart';
import 'package:news_app/screens/instgram_feed.dart';
import 'package:news_app/screens/twitter_feed.dart';

class NavigationDrawer extends StatefulWidget {
  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  List<NavMenuItem> navigationMenu = [
    NavMenuItem(title: "Explore",destination: ()=>HomeScreen()),
    NavMenuItem(title: "HeadLine News", destination: ()=>HeadLineNews()),
    NavMenuItem(title: "Twitter Feeds",destination: ()=>TwitterFeeds()),
    NavMenuItem(title: "Instgram Feeds",destination: ()=>InstgramFeed()),
    NavMenuItem(title: "FaceBook Feeds",destination: ()=>FaceBookFeed())
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(top: 75,left: 20),
        child: ListView.builder(
            itemCount: navigationMenu.length,
            itemBuilder: (context, position) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: Text(navigationMenu[position].title,
                      style: TextStyle(fontSize: 22, color: Colors.grey.shade900)),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return navigationMenu[position].destination();
                    }));

                  },
                ),
              );
            }),
      ),
    );
  }
}
