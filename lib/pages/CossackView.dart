import 'package:flutter/material.dart';
import '../utils/constants.dart';
import '../utils/services.dart';

class CossackView extends StatelessWidget {
  static String routeName = Constants.routes['cossackView'];

  @override
  Widget build(BuildContext context) {
    final RouteArguments cossackId = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: RaisedButton(
          onPressed: () => Navigator.pop(context),
          child: Text('${cossackId.id}')
        ),
      ),
    );
  }
}
