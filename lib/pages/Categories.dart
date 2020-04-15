import 'package:flutter/material.dart';
import '../utils/constants.dart';

class Categories extends StatelessWidget {
  static const String routeName = Constants.categories;

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
