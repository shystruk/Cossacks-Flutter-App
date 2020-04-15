import 'package:flutter/material.dart';

import '../pages/Categories.dart';
import '../utils/constants.dart';

class HomePage extends StatefulWidget {
  HomePage({ Key key, this.title }) : super(key: key);

  static const String routeName = Constants.homeRoute;
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
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
              setState(() {});
            },
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          unselectedLabelColor: Constants.grey,
          labelColor: Constants.red,
          indicatorColor: Constants.red,
          isScrollable: true,
          labelStyle: TextStyle(
            fontSize: 14, fontFamily: Constants.font
          ),
          tabs: [
            new Tab(text: 'Trending'),
            new Tab(text: 'Latest'),
            new Tab(text: 'New'),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Center(
            child: RaisedButton(
              onPressed: () => Navigator.pushNamed(context, Categories.routeName),
              child: Text('Go to'),
            ),
          ),
          Center(
            child: RaisedButton(
              onPressed: () => Navigator.pushNamed(context, Categories.routeName),
              child: Text('Go to'),
            ),
          ),
          Text('New Content'),
        ]
      ),
    );
  }
}
