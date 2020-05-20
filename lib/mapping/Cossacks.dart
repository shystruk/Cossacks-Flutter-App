import 'package:flutter/foundation.dart';

class Cossacks {
  List<Cossack> list;

  Cossacks({
    @required this.list
  });

  Cossacks.fromJson(List<dynamic> json) {
    if (json != null) {
      list = new List<Cossack>();
      
      json.forEach((cossack) => {
        list.add(Cossack(
          id: cossack['id'].toString(),
          name: cossack['name'],
          title: cossack['title'],
          born: cossack['born'],
          died: cossack['died'],
          image: cossack['image'],
        ))
      });
    }
  }
}

class Cossack {
  String id;
  String name;
  String title;
  int born;
  int died;
  String image;

  Cossack({
    @required this.id,
    @required this.name,
    @required this.title,
    @required this.born,
    @required this.died,
    @required this.image,
  });
}
