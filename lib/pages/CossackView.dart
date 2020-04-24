import 'package:flutter/material.dart';
import '../utils/constants.dart';

class CossackView extends StatelessWidget {
  static String routeName = Constants.routes['cossackView'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: RaisedButton(
          onPressed: () => Navigator.pop(context),
          child: Text('Cossack View')
        ),
      ),
    );
  }
}
