import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../utils/constants.dart';
import '../mapping/Cossacks.dart';
import '../utils/services.dart';

class CossacksProvider with ChangeNotifier {
  Cossacks _cossacks;

  Cossacks get cossacks {
    return _cossacks;
  }

  set cossacks(items) {
    _cossacks = items;
  }

  Future<void> getCossacks() async {
    var response = await http.get('${Constants.api_url}/cossacks/en');
    cossacks = Cossacks.fromJson(HttpHelper.getResponse(response));
    notifyListeners();
  }
}
