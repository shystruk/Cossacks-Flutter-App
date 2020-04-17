import 'package:flutter/material.dart';
import '../utils/constants.dart';

class CossackView extends StatelessWidget {
  static const String routeName = Constants.kozakViewRoute;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: RaisedButton(
          onPressed: () => Navigator.pop(context),
          child: Text('Kozak View')
        ),
      ),
    );
  }
}
