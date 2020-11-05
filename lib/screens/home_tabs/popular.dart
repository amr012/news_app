import 'package:flutter/material.dart';

class Popular extends StatefulWidget {
  @override
  _WhatsNewState createState() => _WhatsNewState();
}

class _WhatsNewState extends State<Popular> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: 10,
        itemBuilder: (context , position){
      return Card(
        child: _drawSingleRow(),
      );
    });
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

}
