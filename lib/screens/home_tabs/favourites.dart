import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Favourites extends StatefulWidget {
  @override
  _FavouritesState createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  List<Color> colorsList = [
    Colors.red,
    Colors.deepOrange,
    Colors.teal,
    Colors.deepPurple,
    Colors.amber,
    Colors.green
  ];
  Random random = Random();

  Color _getRandomColor() {
    return colorsList[random.nextInt(colorsList.length)];
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, position) {
          return Card(
            child: Container(
              padding: EdgeInsets.all(16),
              child: Column(
                children: <Widget>[
                  _authorRow(),
                  SizedBox(
                    height: 15,
                  ),
                  _newsItemRow()
                ],
              ),
            ),
          );
        });
  }

  Widget _authorRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage("images/asd.jpg"),
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text(
                    "Michael Adams",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "15 min.",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        "Lifestyle",
                        style: TextStyle(color: _getRandomColor()),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
        IconButton(icon: Icon(Icons.bookmark_border), onPressed: () {})
      ],
    );
  }

  Widget _newsItemRow() {
    return Row(
      children: <Widget>[
        Container(
          height: 140,
          width: 140,
          child: Image.asset(
            "images/asd.jpg",
            fit: BoxFit.fill,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            children: <Widget>[
              Text(
                "Tech Tent: Old Phones and safe social.",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5,),
              Text(
                "We also talk about the future of work as the robots advance, and we ask wether a reto phone ",
                style: TextStyle(fontSize: 18),
              )
            ],
          ),
        )
      ],
    );
  }
}
