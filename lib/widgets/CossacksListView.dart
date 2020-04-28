import 'package:flutter/material.dart';
import '../mapping/Cossacks.dart';

class CossacksListView extends StatefulWidget {
  CossacksListView ({ Key key, this.cossacks }): super(key: key);

  final Cossacks cossacks;

  @override
  _CossacksListViewState createState() => _CossacksListViewState();
}

class _CossacksListViewState extends State<CossacksListView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ...widget.cossacks.list.map((cossack) => 
          new Text(cossack['name'])
        ).toList()
      ],
    );
  }
}
