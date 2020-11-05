import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/screens/home_screen.dart';
import 'package:page_view_indicator/page_view_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  ValueNotifier<int> _pageviewnotifier = ValueNotifier(0);

  List<IconData> icons = [
    Icons.ac_unit,
    Icons.accessibility,
    Icons.account_balance,
    Icons.account_circle
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          PageView.builder(
            onPageChanged: (index){
              _pageviewnotifier.value = index ;
            },
            itemBuilder: (context, index) {
              return Stack(
                children: <Widget>[
                  Container(
                    color: Colors.black,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Transform.translate(
                        offset: Offset(0, -100),
                        child: Icon(
                          icons[index],
                          color: Colors.white,
                          size: 150,
                        ),
                      ),
                      Text(
                        "Welcome!",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 48, right: 48, top: 18),
                        child: Text(
                          'Making Friends is easy as waving your hand back and forth in easy step',
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  )
                ],
              );
            },
            itemCount: icons.length,
          ),
          Transform.translate(
            offset: Offset(0, 175),
            child: Align(
              alignment: Alignment.center,
              child: _displayPageIndicator(icons.length),

            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20, right: 20, left: 20),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      _updatescreen();
                   return   HomeScreen();}));
                  },
                  color: Colors.red.shade800,
                  child: Text(
                    "GET STARTED",
                    style: TextStyle(
                        color: Colors.white, fontSize: 18, letterSpacing: 1),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _displayPageIndicator(int length){
    return PageViewIndicator(
      pageIndexNotifier: _pageviewnotifier,
      length: length,
      normalBuilder: (animationController, index) => Circle(
        size: 8.0,
        color: Colors.grey,
      ),
      highlightedBuilder: (animationController, index) => ScaleTransition(
        scale: CurvedAnimation(
          parent: animationController,
          curve: Curves.ease,
        ),
        child: Circle(
          size: 12.0,
          color: Colors.red,
        ),
      ),
    );
  }

  void _updatescreen() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('seen', true);
  }
}
