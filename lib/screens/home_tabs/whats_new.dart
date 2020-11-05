import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WhatsNew extends StatefulWidget {
  @override
  _WhatsNewState createState() => _WhatsNewState();
}

class _WhatsNewState extends State<WhatsNew> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _drawcontainer(),
          _drawTopStories()],
      ),
    );
  }

  Widget _drawcontainer() {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * .30,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("images/asd.jpg"), fit: BoxFit.fill),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 48, right: 48),
            child: Text(
              "How Are You ?? are u ok !",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: Text("yes iam okey , thanks for your question .",
                style: TextStyle(color: Colors.white, fontSize: 18)),
          )
        ],
      ),
    );
  }

  Widget _drawTopStories() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 15),
            child: _drawTitle("Top Stories"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Column(
                children: <Widget>[
                  _drawSingleRow(),
                  _drawDivider(),
                  _drawSingleRow(),
                  _drawDivider(),
                  _drawSingleRow(),
                  _drawDivider()

                ],
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top : 10 , left: 15),
           child: _drawTitle("Recent Updates"),),
          _drawRecentUpdatesCard(Colors.deepOrange),
          _drawRecentUpdatesCard(Colors.teal),
          SizedBox(height: 50,)

        ],
      ),
    );
  }
  Widget _drawSingleRow(){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          SizedBox(
              height: 110,
              width: 110,
              child: Image(
                image: AssetImage("images/asd.jpg"),
                fit: BoxFit.fill,
              )),
          SizedBox(
            width: 14,
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                Text(
                  "The World Global Warming Annual Summit .",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text("Michael Adams",style: TextStyle(fontSize: 16),),
                    Row(children: <Widget>[
                      Icon(Icons.access_time),
                      Text("15 mins")
                    ],
                    )
                  ],)
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _drawDivider(){
    return Container(
      height: 1,
      color: Colors.grey,
      width: double.infinity,
    );
  }
  
  Widget _drawTitle(String title){
    return Text(
      title,
      style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: Colors.grey.shade800),
    );
  }

 Widget _drawRecentUpdatesCard(Color color ) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.30,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("images/asd.jpg"),
              fit: BoxFit.fill)
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.only(left: 16, right: 16 , bottom: 4, top: 4),
              child: Text("Sport",style: TextStyle(fontSize: 20,color: Colors.white)),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(5)
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Vettel is Ferrai Number One - Hamilton ",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w500),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Row(children: <Widget>[
              Icon(Icons.access_time,color: Colors.grey,),
              SizedBox(width: 5,),
              Text("15 mins")
            ],),
          )
        ],
      ),
    );
 }
}
