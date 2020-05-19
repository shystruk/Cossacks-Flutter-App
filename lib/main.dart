import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './pages/Home.dart';
import './pages/CossackView.dart';
import './pages/CityView.dart';
import './pages/Categories.dart';
import './utils/constants.dart';
import './providers/CossacksProvider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CossacksProvider()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: Constants.font,
        ),
        debugShowCheckedModeBanner: false,
        home: HomePage(title: ''),
        routes: {
          CossackView.routeName: (context) => CossackView(),
          CityView.routeName: (context) => CityView(),
          Categories.routeName: (context) => Categories(),
        },
      ),
    );
  }
}
