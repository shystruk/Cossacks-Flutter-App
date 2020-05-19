import 'package:flutter/foundation.dart';

class Cossacks {
  List<Map<String, dynamic>> list;

  Cossacks({
    @required this.list
  });

  Cossacks.fromJson(List<dynamic> json) {
    if (json != null) {
      list = new List<Map<String, dynamic>>();
      
      json.forEach((cossack) => {
        list.add({
          'id': cossack['id'].toString(),
          'name': cossack['name'],
          'title': cossack['title'],
          'born': cossack['born'],
          'died': cossack['died'],
          'image': cossack['image'],
        })
      });
    }
  }
}
