import 'package:flutter/material.dart';
import 'package:flutter_demo_app/widgets/TextCustom.dart';
import 'package:flutter_demo_app/pages/Home.dart';
import 'package:flutter_demo_app/pages/KozakView.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(title: ''),
      routes: {
        KozakView.routeName: (context) => KozakView(),
      },
    );
  }
}
