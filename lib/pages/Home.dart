import 'package:flutter/material.dart';
import 'package:flutter_demo_app/utils/constants.dart';

class HomePage extends StatefulWidget {
  HomePage({ Key key, this.title }) : super(key: key);

  static const String routeName = Constants.homeRoute;
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Container(
          padding: EdgeInsets.all(10),
          child: Image.asset(
            'assets/images/kozak.png',
            width: 30,
            height: 30,
          ),
        ),
        actions: <Widget>[
          IconButton(
            color: Colors.black,
            icon: Icon(Icons.search),
            onPressed: () {
              setState(() {
              });
            },
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Container(
              child: Image.asset(
                'assets/images/kozak.png',
                width: 200,
                height: 200,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RaisedButton(
                  child: Text('Navigate'),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      Constants.kozakViewRoute,
                    );
                  },
                ),
              ]
            ),
          ],
        ),
      ),
    );
  }
}
