import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../utils/constants.dart';

class CossacksTabView extends StatefulWidget {
  @override
  _CossacksTabViewState createState() => _CossacksTabViewState();
}

class _CossacksTabViewState extends State<CossacksTabView> {
  bool _isCossacksReady = false;

  @override
  void initState() {
    super.initState();

    getCossacks();
  }

  Future<void> getCossacks() async {
    var response = await http.get('${Constants.api_url}/cossacks/en');
    var decodeResponse = jsonDecode(response.body);
    print(decodeResponse);
    this.setState(() {
      _isCossacksReady = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _isCossacksReady
        ? Text('Cossacks')
        : Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(50),
                child: CircularProgressIndicator(
                  backgroundColor: Constants.red, 
                  valueColor: new AlwaysStoppedAnimation<Color>(Colors.white)
                ),
              )
            ],
          ),
    );
  }
}
