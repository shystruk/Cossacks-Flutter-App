import 'package:flutter/material.dart';
import '../pages/CossacksTabView.dart';
import '../pages/CitiesTabView.dart';
import '../utils/constants.dart';

class HomePage extends StatefulWidget {
  HomePage({ Key key, this.title }) : super(key: key);

  static String routeName = Constants.routes['home'];
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  static const List<Map<String, String>> tabsList = [
    { 'title': 'Cossacks' },
    { 'title': 'Cities' }
  ];

  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: tabsList.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: Container(
          padding: EdgeInsets.all(10),
          child: Image.asset(
            'assets/images/cossack.png',
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
          // isScrollable: true,
          labelStyle: TextStyle(
            fontSize: 14, fontFamily: Constants.font
          ),
          tabs: <Widget>[
            ...tabsList.map((tab) => new Tab(text: tab['title'])).toList()
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          new CossacksTabView(),
          new CitiesTabView(),
        ]
      ),
    );
  }
}
