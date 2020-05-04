import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../utils/constants.dart';
import '../widgets/CossacksListView.dart';
import '../mapping/Cossacks.dart';
import '../utils/services.dart';

class CossacksTabView extends StatefulWidget {
  @override
  _CossacksTabViewState createState() => _CossacksTabViewState();
}

class _CossacksTabViewState extends State<CossacksTabView> with AutomaticKeepAliveClientMixin {
  bool _isCossacksReady = false;
  Cossacks cossacks;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();

    getCossacks();
  }

  Future<void> getCossacks() async {
    try {
      var response = await http.get('${Constants.api_url}/cossacks/en');
      cossacks = Cossacks.fromJson(HttpHelper.getResponse(response));
    } on SocketException {
      HttpHelper.showHttpStatusDialog(context, 'No Internet connection');
    }

    this.setState(() {
      _isCossacksReady = cossacks != null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _isCossacksReady
        ? Container(
            child: new CossacksListView(cossacks: cossacks),
          )
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
