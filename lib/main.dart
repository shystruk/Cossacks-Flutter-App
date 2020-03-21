import 'package:flutter/material.dart';
import 'package:flutter_demo_app/widget/TextCustom.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Demo App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({ Key key, this.title }) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextCustom(text: widget.title)
    );
  }
}
