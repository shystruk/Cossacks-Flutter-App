import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../utils/constants.dart';
import '../utils/services.dart';
import '../mapping/Cities.dart';

class CitiesProvider with ChangeNotifier {
  Cities _cities;

  Cities get cities {
    return _cities;
  }

  set cities(items) {
    _cities = items;
  }

  City findById(String id) {
    return _cities.list.firstWhere((item) => item.id == id);
  }

  Future<void> getCities() async {
    var response = await http.get('${Constants.api_url}/cities/en');
    cities = Cities.fromJson(HttpHelper.getResponse(response));
    notifyListeners();
  }
}
