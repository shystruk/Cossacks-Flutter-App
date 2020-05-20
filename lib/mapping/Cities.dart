import 'package:flutter/foundation.dart';

class Cities {
  List<City> list;

  Cities({
    @required this.list
  });

  Cities.fromJson(List<dynamic> json) {
    if (json != null) {
      list = new List<City>();
      
      json.forEach((city) => {
        list.add(City(
          id: city['id'].toString(),
          name: city['name'],
          population: city['population'],
          description: city['description'],
          image: city['image'],
          flag: city['flag'],
          website: city['website'],
        ))
      });
    }
  }
}

class City {
  String id;
  String name;
  String population;
  String description;
  String image;
  String flag;
  String website;

  City({
    @required this.id,
    @required this.name,
    @required this.population,
    @required this.description,
    @required this.image,
    @required this.flag,
    @required this.website,
  });
}
