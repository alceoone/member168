import 'package:flutter/material.dart';
import 'package:ilufa_168/models/store_model.dart';
import 'package:ilufa_168/services/store_service.dart';

class StoreProvider with ChangeNotifier {
  List<StoreModel?> _stores = [];
  List<StoreModel?> get stores => _stores;
  set stores(List<StoreModel?> stores) {
    _stores = stores;
    notifyListeners();
  }

  Future<void> getStores() async {
    try {
      List<StoreModel?> stores = await StoreService().getStores();
      _stores = stores;
    } catch (e) {
      print(e);
    }
  }
}
