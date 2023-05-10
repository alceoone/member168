import 'dart:convert';

import 'package:ilufa_168/models/store_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:http/http.dart' as http;

class StoreService {
  String baseUrl = 'https://6997-36-68-11-13.ngrok-free.app/api';
  // String baseUrl = 'https://beta.ilufa.co.id/api';

  Future<List<StoreModel>> getStores() async {
    var url = Uri.parse('$baseUrl/store');
    var headers = {'Content-Type': 'application/json'};

    // var response = await http.get(Uri.parse('$baseUrl/store'));
    var response = await http.get(url, headers: headers);

    if (response.statusCode == 200) {
      print(jsonDecode(response.body)['data']['store']);
      List data = jsonDecode(response.body)['data']['store'];
      List<StoreModel> stores = [];
      for (var item in data) {
        stores.add(StoreModel.fromJson(item));
      }
      return stores;
    } else {
      throw Exception('Failed to load users');
    }
  }
}
