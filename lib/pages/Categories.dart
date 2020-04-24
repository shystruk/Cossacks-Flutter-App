import 'package:flutter/material.dart';
import '../utils/constants.dart';

class Categories extends StatelessWidget {
  static String routeName = Constants.routes['categories'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: RaisedButton(
          onPressed: () => Navigator.pop(context),
          child: Text('Categories')
        ),
      ),
    );
  }
}
