import 'package:flutter/material.dart';

import './pages/Home.dart';
import './pages/KozakView.dart';
import './pages/Categories.dart';
import './utils/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: Constants.font,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(title: ''),
      routes: {
        KozakView.routeName: (context) => KozakView(),
        Categories.routeName: (context) => Categories(),
      },
    );
  }
} 
