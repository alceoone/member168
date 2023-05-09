import 'package:flutter/material.dart';

import '../models/tr_model.dart';
import '../services/tr_service.dart';

class TrProvider with ChangeNotifier {
  List<TrModel?> _tr = [];
  List<TrModel?> get tr => _tr;
  set tr(List<TrModel?> tr) {
    _tr = tr;
    notifyListeners();
  }

  Future<bool> getTr(String userMemberId) async {
    try {
      List<TrModel?> tr = await TrService().getTr(userMemberId);
      _tr = tr;
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
