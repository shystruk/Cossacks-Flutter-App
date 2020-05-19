import 'package:flutter/material.dart';
import '../utils/constants.dart';

class CityView extends StatefulWidget {
  static String routeName = Constants.routes['cityView'];

  @override
  _CityViewState createState() => _CityViewState();
}

class _CityViewState extends State<CityView> {
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
    final String cityId = ModalRoute.of(context).settings.arguments;

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
                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
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
                title: Text(cityId),
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
