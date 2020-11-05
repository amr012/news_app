import 'package:flutter/material.dart';
import 'package:news_app/shared_ui/navigation_drawer.dart';

class TwitterFeeds extends StatefulWidget {
  @override
  _TwitterFeedsState createState() => _TwitterFeedsState();
}

class _TwitterFeedsState extends State<TwitterFeeds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Twitter Feeds"),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.search), onPressed: (){})
      ],),
      drawer: NavigationDrawer(),
      body: ListView.builder(itemCount: 10,
          itemBuilder: (context , position){
        return Card(
          child: Column(children: <Widget>[
            _cardHeader(),
            _cardBody(),
            _cardBottom()

          ],),
        );
      }),
    );
  }
  Widget _cardHeader(){
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: CircleAvatar(backgroundImage: AssetImage("images/asd.jpg"),),
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.start,
         children: <Widget>[
          Row(children: <Widget>[
            Text("Christina Meyers",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            Text("@ch_meyers",style: TextStyle(color: Colors.grey),)
          ],),
          SizedBox(height:5,),
          Text("Fri,12 May 2017 . 14.30",style: TextStyle(color: Colors.grey),)
        ],)
      ],
    );
  }

  Widget _cardBody(){
    return Padding(
      padding: const EdgeInsets.only(left: 18,bottom:5,right: 16),
      child: Text("We Also Talk About the Future of work as the robots advance, and we ask whether a rento phone",
      style: TextStyle(fontSize: 16),),
    );
  }

  Widget _cardBottom(){
    return Card(child:
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
        Row(children: <Widget>[
          IconButton(icon: Icon(Icons.repeat,color: Colors.orange,), onPressed: (){}),
          Text("25")
        ],),
        Row(children: <Widget>[
          FlatButton(onPressed: (){}, child: Text("SHARE",style: TextStyle(color: Colors.orange),)),
          FlatButton(onPressed: (){}, child: Text("OPEN",style: TextStyle(color: Colors.orange))),
        ],)
      ],),);
  }
}
