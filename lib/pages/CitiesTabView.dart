import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:provider/provider.dart';
import '../providers/CitiesProvider.dart';
import '../utils/constants.dart';
import '../mapping/Cities.dart';

class CitiesTabView extends StatefulWidget {
  @override
  _CitiesTabViewState createState() => _CitiesTabViewState();
}

class _CitiesTabViewState extends State<CitiesTabView> with AutomaticKeepAliveClientMixin {
  bool _isCitiesReady = false;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final citiesData = Provider.of<CitiesProvider>(context);
    final Cities cities = citiesData.cities;

    if (cities == null) {
      citiesData.getCities();
    } else {
      this.setState(() { _isCitiesReady = true; });
    }

    return Container(
      child: _isCitiesReady
        ? GridView.builder(
          padding: const EdgeInsets.all(15),
          itemCount: cities.list.length,
          itemBuilder: (context, index) => Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(const Radius.circular(8)),
              boxShadow: [
                BoxShadow(
                  color: Constants.grey.withOpacity(0.2),
                  spreadRadius: 3,
                  blurRadius: 3,
                  offset: Offset(0, 1)
                )
              ]
            ),
            child: GestureDetector(
              onTap: () => {
                Navigator.pushNamed(
                  context, 
                  Constants.routes['cityView'],
                  arguments: cities.list[index].id,
                )
              },
              child: Row(
                children: <Widget>[
                  Flexible(
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 200,
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(topLeft: const Radius.circular(8), topRight: const Radius.circular(8)),
                            child: FadeInImage.memoryNetwork(
                              placeholder: kTransparentImage,
                              image: cities.list[index].image,
                              width: double.infinity,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15, bottom: 10),
                          child: Text(
                            cities.list[index].name,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ),
                        Text(
                          'Pop. ${cities.list[index].population}',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 17,
                            color: Constants.grey,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 5,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20
          ),
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
