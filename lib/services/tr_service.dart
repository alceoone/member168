import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import 'package:http/http.dart' as http;

import '../models/tr_model.dart';

class TrService {
  String baseUrl = 'https://18d5-36-68-11-13.ngrok-free.app/api';
  Future<List<TrModel>> getTr(String userMemberId) async {
    print(userMemberId);
    var url = Uri.parse('$baseUrl/tr/app/$userMemberId/invoices');
    var headers = {'Content-Type': 'application/json'};

    // var response = await http.get(Uri.parse('$baseUrl/store'));
    var response = await http.get(url, headers: headers);

    if (response.statusCode == 200) {
      print(jsonDecode(response.body)['data']);
      List data = jsonDecode(response.body)['data'];
      List<TrModel> stores = [];
      for (var item in data) {
        stores.add(TrModel.fromJson(item));
      }
      return stores;
    } else {
      throw Exception('Failed to load users');
    }
  }
}
