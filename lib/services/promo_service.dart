import 'dart:convert';

import 'package:ilufa_168/models/store_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:http/http.dart' as http;

import '../models/promo_model.dart';

class PromoService {
  // String baseUrl = 'https://6997-36-68-11-13.ngrok-free.app/api';
  String baseUrl = 'https://beta.ilufa.co.id/api';

  Future<List<PromoModel>> getPromoLandingPages() async {
    var url = Uri.parse('$baseUrl/promo');
    var headers = {'Content-Type': 'application/json'};

    // var response = await http.get(Uri.parse('$baseUrl/store'));
    var response = await http.get(url, headers: headers);

    if (response.statusCode == 200) {
      print(jsonDecode(response.body)['data']);
      List data = jsonDecode(response.body)['data'];
      List<PromoModel> promo = [];
      for (var item in data) {
        promo.add(PromoModel.fromJson(item));
      }
      return promo;
    } else {
      throw Exception('Failed to load users');
    }
  }
}
