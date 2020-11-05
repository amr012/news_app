
import 'package:flutter/material.dart';
import 'package:news_app/shared_ui/navigation_drawer.dart';

class FaceBookFeed extends StatefulWidget {
  @override
  _FaceBookFeedState createState() => _FaceBookFeedState();
}

class _FaceBookFeedState extends State<FaceBookFeed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FaceBook Feeds"),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {})
        ],
      ),
      drawer: NavigationDrawer(),
      body: ListView.builder(
          padding: EdgeInsets.all(8),
          itemCount: 10,
          itemBuilder: (context, position) {
            return Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _drawHeader(),
                  _drawTitle(),
                  _drawHashTag(),
                  _drawBody(),
                  _drawBottom(),
                ],
              ),
            );
          }),
    );
  }
  _drawHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: CircleAvatar(
                backgroundImage: AssetImage("images/asd.jpg"),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      "Christina Meyers",
                      style:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Fri,12 May 2017 . 14.30",
                  style: TextStyle(color: Colors.grey),
                )
              ],
            )
          ],
        ),
        Row(
          children: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.favorite_border,
                  color: Colors.grey,
                ),
                onPressed: () {}),
            Transform.translate(
                offset: Offset(-8, 0),
                child: Text(
                  "25",
                  style: TextStyle(color: Colors.grey),
                ))
          ],
        )
      ],
    );
  }

  _drawTitle() {
    return Padding(
      padding: const EdgeInsets.only(left: 18),
      child: Text(
        "We also talk about the future of work as the robots",
        style: TextStyle(fontSize: 16, color: Colors.grey.shade700),
      ),
    );
  }

  _drawHashTag() {
    return Container(
      child: Wrap(
        children: <Widget>[
          FlatButton(
              onPressed: () {},
              child: Text(
                "#advance",
                style: TextStyle(color: Colors.orange),
              )),
          FlatButton(
              onPressed: () {},
              child: Text(
                "#reto",
                style: TextStyle(color: Colors.orange),
              )),
          FlatButton(
              onPressed: () {},
              child: Text(
                "#instgram",
                style: TextStyle(color: Colors.orange),
              )),
        ],
      ),
    );
  }

  _drawBody() {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * .28,
      child: Image(
        image: AssetImage("images/asd.jpg"),
        fit: BoxFit.fill,
      ),
    );
  }

  _drawBottom() {
    return Card(child:
    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text("10 COMMENTS",style: TextStyle(color: Colors.orange),),
        Row(children: <Widget>[
          FlatButton(onPressed: (){}, child: Text("SHARE",style: TextStyle(color: Colors.orange))),
          FlatButton(onPressed: (){}, child: Text("OPEN",style: TextStyle(color: Colors.orange))),
        ],)

      ],),);
  }
}
