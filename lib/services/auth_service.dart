import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../models/user_model.dart';
import 'package:http/http.dart' as http;

class AuthService {
  String baseUrl = 'https://beta.ilufa.co.id/api';

  Future<UserModel> register({
    required String f_name,
    required String l_name,
    required String no_telp,
    required String username,
    required String email,
    required String password,
  }) async {
    var url = Uri.parse('$baseUrl/register');
    var headers = {'Content-Type': 'application/json'};
    var body = jsonEncode({
      'f_name': f_name,
      'l_name': l_name,
      'no_telp': no_telp,
      'username': username,
      'email': email,
      'password': password,
    });
    var response = await http.post(
      url as Uri,
      headers: headers,
      body: body,
    );
    print(response.body);
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      UserModel user = UserModel.fromJson(data['user']);
      user.token = 'Bearer ' + data['access_token'];

      // SharedPreferences localStorage = await SharedPreferences.getInstance();
      // localStorage.setString('token', json.encode(data['token']));

      return user;
    } else {
      throw Exception('Gagal Register');
    }
  }

  Future<UserModel> login({
    required String email,
    required String password,
  }) async {
    var url = Uri.parse('$baseUrl/login');
    var headers = {'Content-Type': 'application/json'};
    var body = jsonEncode({
      'email': email,
      'password': password,
    });
    var response = await http.post(
      url as Uri,
      headers: headers,
      body: body,
    );
    // print(response.body);
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      UserModel user = UserModel.fromJson(data['user']);
      user.token = 'Bearer ' + data['access_token'];
      SharedPreferences localStorage = await SharedPreferences.getInstance();
      localStorage.setString('token', data['access_token']);
      return user;
    } else {
      throw Exception('Gagal Login');
    }
  }

  Future<UserModel> userget() async {
    var url = Uri.parse('$baseUrl/user');

    SharedPreferences localStorage = await SharedPreferences.getInstance();
    String? token = localStorage.getString('token');
    // var headers = {'Content-Type': 'application/json'};
    // var body = jsonEncode();
    var response = await http.get(
      url as Uri,
      // headers: headers,
      headers: {'Authorization': 'Bearer $token'},
      // body: body,
    );
    // print(response.body);
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      UserModel user = UserModel.fromJson(data['user']);
      user.token = 'Bearer $token';

      // localStorage.setString('token', data['access_token']);
      return user;
    } else {
      throw Exception('Gagal Login');
    }
  }
}
