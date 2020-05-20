import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/CossacksProvider.dart';
import '../utils/constants.dart';
import '../mapping/Cossacks.dart';

class CossackView extends StatefulWidget {
  static String routeName = Constants.routes['cossackView'];

  @override
  _CossackViewState createState() => _CossackViewState();
}

class _CossackViewState extends State<CossackView> {
  Cossack _cossack;
  bool _isAppBarCollapsed = false;
  ScrollController _scrollController;

  _scrollListener() {
    if (_scrollController.hasClients && _scrollController.offset >= 220) {
      this.setState(() { _isAppBarCollapsed = true; });
    } else if (_scrollController.hasClients && _scrollController.offset <= 100) {
      this.setState(() { _isAppBarCollapsed = false; });
    }
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final String cossackId = ModalRoute.of(context).settings.arguments;
    final cossacksData = Provider.of<CossacksProvider>(context);
    cossacksData.cossacks.list.forEach((item) => {
      if (item.id == cossackId) {
        this.setState(() { _cossack = item; })
      }
    });

    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: <Widget>[
          SliverAppBar(
            floating: false,
            pinned: true,
            stretch: false,
            brightness: _isAppBarCollapsed ? Brightness.light : Brightness.dark,
            backgroundColor: Colors.white,
            expandedHeight: 300.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      image: new DecorationImage(
                        fit: BoxFit.cover,
                        colorFilter: 
                          ColorFilter.mode(Colors.black.withOpacity(0.5), 
                          BlendMode.dstATop),
                        image: new NetworkImage(
                          _cossack.image
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              ListTile(
                leading: Icon(Icons.wb_sunny),
                title: Text(cossackId),
                subtitle: Text('sunny, h: 80, l: 65'),
              ),
              ListTile(
                leading: Icon(Icons.wb_sunny),
                title: Text('Monday'),
                subtitle: Text('sunny, h: 80, l: 65'),
              ),
              ListTile(
                leading: Icon(Icons.wb_sunny),
                title: Text('Monday'),
                subtitle: Text('sunny, h: 80, l: 65'),
              ),
              ListTile(
                leading: Icon(Icons.wb_sunny),
                title: Text('Monday'),
                subtitle: Text('sunny, h: 80, l: 65'),
              ),
              ListTile(
                leading: Icon(Icons.wb_sunny),
                title: Text('Monday'),
                subtitle: Text('sunny, h: 80, l: 65'),
              ),
              ListTile(
                leading: Icon(Icons.wb_sunny),
                title: Text('Monday'),
                subtitle: Text('sunny, h: 80, l: 65'),
              ),
              ListTile(
                leading: Icon(Icons.wb_sunny),
                title: Text('Monday'),
                subtitle: Text('sunny, h: 80, l: 65'),
              ),
              ListTile(
                leading: Icon(Icons.wb_sunny),
                title: Text('Monday'),
                subtitle: Text('sunny, h: 80, l: 65'),
              ),
              ListTile(
                leading: Icon(Icons.wb_sunny),
                title: Text('Monday'),
                subtitle: Text('sunny, h: 80, l: 65'),
              ),
              ListTile(
                leading: Icon(Icons.wb_sunny),
                title: Text('Monday'),
                subtitle: Text('sunny, h: 80, l: 65'),
              ),
              ListTile(
                leading: Icon(Icons.wb_sunny),
                title: Text('Monday'),
                subtitle: Text('sunny, h: 80, l: 65'),
              ),
              ListTile(
                leading: Icon(Icons.wb_sunny),
                title: Text('Monday'),
                subtitle: Text('sunny, h: 80, l: 65'),
              ),
              ListTile(
                leading: Icon(Icons.wb_sunny),
                title: Text('Monday'),
                subtitle: Text('sunny, h: 80, l: 65'),
              ),
              ListTile(
                leading: Icon(Icons.wb_sunny),
                title: Text('Monday'),
                subtitle: Text('sunny, h: 80, l: 65'),
              ),
              ListTile(
                leading: Icon(Icons.wb_sunny),
                title: Text('Monday'),
                subtitle: Text('sunny, h: 80, l: 65'),
              ),
              ListTile(
                leading: Icon(Icons.wb_sunny),
                title: Text('Monday'),
                subtitle: Text('sunny, h: 80, l: 65'),
              ),
              ListTile(
                leading: Icon(Icons.wb_sunny),
                title: Text('Monday'),
                subtitle: Text('sunny, h: 80, l: 65'),
              ),
              ListTile(
                leading: Icon(Icons.wb_sunny),
                title: Text('Monday'),
                subtitle: Text('sunny, h: 80, l: 65'),
              ),
              ListTile(
                leading: Icon(Icons.wb_sunny),
                title: Text('Monday'),
                subtitle: Text('sunny, h: 80, l: 65'),
              ),
              ListTile(
                leading: Icon(Icons.wb_sunny),
                title: Text('Monday'),
                subtitle: Text('sunny, h: 80, l: 65'),
              ),
              ListTile(
                leading: Icon(Icons.wb_sunny),
                title: Text('Monday'),
                subtitle: Text('sunny, h: 80, l: 65'),
              ),
              ListTile(
                leading: Icon(Icons.wb_sunny),
                title: Text('Monday'),
                subtitle: Text('sunny, h: 80, l: 65'),
              ),
              ListTile(
                leading: Icon(Icons.wb_sunny),
                title: Text('Monday'),
                subtitle: Text('sunny, h: 80, l: 65'),
              ),
              ListTile(
                leading: Icon(Icons.wb_sunny),
                title: Text('Monday'),
                subtitle: Text('sunny, h: 80, l: 65'),
              ),
              ListTile(
                leading: Icon(Icons.wb_sunny),
                title: Text('Monday'),
                subtitle: Text('sunny, h: 80, l: 65'),
              ),
              ListTile(
                leading: Icon(Icons.wb_sunny),
                title: Text('Monday'),
                subtitle: Text('sunny, h: 80, l: 65'),
              ),
              ListTile(
                leading: Icon(Icons.wb_sunny),
                title: Text('Monday'),
                subtitle: Text('sunny, h: 80, l: 65'),
              ),
              ListTile(
                leading: Icon(Icons.wb_sunny),
                title: Text('Monday'),
                subtitle: Text('sunny, h: 80, l: 65'),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
