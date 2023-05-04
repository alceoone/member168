import 'package:flutter/material.dart';

import '../models/user_model.dart';
import '../services/auth_service.dart';

class AuthProvider with ChangeNotifier {
  UserModel? _user;

  UserModel? get user => _user;

  set user(UserModel? user) {
    _user = user;
    notifyListeners();
  }

  Future<bool> register({
    required String f_name,
    required String l_name,
    required String no_telp,
    required String username,
    required String email,
    required String password,
  }) async {
    try {
      UserModel user = await AuthService().register(
        f_name: f_name,
        l_name: l_name,
        no_telp: no_telp,
        username: username,
        email: email,
        password: password,
      );
      _user = user;
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<bool> login({
    required String email,
    required String password,
  }) async {
    try {
      UserModel user = await AuthService().login(
        email: email,
        password: password,
      );
      _user = user;
      return true;
    } catch (e) {
      // ignore: avoid_print
      print(e);
      return false;
    }
  }

  Future<bool> userget() async {
    try {
      UserModel user = await AuthService().userget();
      _user = user;
      return true;
    } catch (e) {
      // ignore: avoid_print
      print(e);
      return true;
    }
  }
}
