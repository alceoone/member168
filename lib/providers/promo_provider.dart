import 'package:flutter/material.dart';

import '../models/promo_model.dart';
import '../services/promo_service.dart';

class PromoProvider with ChangeNotifier {
  List<PromoModel?> _promos = [];
  List<PromoModel?> get promos => _promos;
  set promos(List<PromoModel?> promos) {
    _promos = promos;
    notifyListeners();
  }

  Future<void> getPromoLandingPages() async {
    try {
      List<PromoModel?> promos = await PromoService().getPromoLandingPages();
      _promos = promos;
    } catch (e) {
      print(e);
    }
  }
}
