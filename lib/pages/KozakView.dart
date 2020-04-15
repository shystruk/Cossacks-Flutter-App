import 'package:flutter/material.dart';
import 'package:flutter_demo_app/utils/constants.dart';

class KozakView extends StatelessWidget {
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
