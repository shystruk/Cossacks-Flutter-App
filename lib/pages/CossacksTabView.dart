import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../utils/constants.dart';
import '../widgets/CossacksListView.dart';
import '../providers/CossacksProvider.dart';
import '../mapping/Cossacks.dart';

class CossacksTabView extends StatefulWidget {
  @override
  _CossacksTabViewState createState() => _CossacksTabViewState();
}

class _CossacksTabViewState extends State<CossacksTabView> with AutomaticKeepAliveClientMixin {
  bool _isCossacksReady = false;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final cossacksData = Provider.of<CossacksProvider>(context);
    final Cossacks cossacks = cossacksData.cossacks;

    if (cossacks == null) {
      cossacksData.getCossacks();
    } else {
      this.setState(() { _isCossacksReady = true; });
    }

    return Container(
      child: _isCossacksReady
        ? Container(
            child: new CossacksListView(cossacks: cossacks),
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(50),
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
