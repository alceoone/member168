import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ilufa_168/providers/store_provider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/user_model.dart';
import '../providers/auth_provider.dart';
import '../providers/promo_provider.dart';
import '../services/auth_service.dart';
import '../theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    getAuth();
    super.initState();
  }

  getAuth() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    localStorage.getString('token');

    if (localStorage.getString('token') == null) {
      Timer(
          const Duration(seconds: 3),
          () => Navigator.pushNamedAndRemoveUntil(
              context, '/sign-in', (route) => false));
    } else {
      AuthProvider authProvider =
          Provider.of<AuthProvider>(context, listen: false);
      await Provider.of<PromoProvider>(context, listen: false)
          .getPromoLandingPages();
      await Provider.of<StoreProvider>(context, listen: false).getStores();
      if (await authProvider.userget()) {
        Timer(
            const Duration(seconds: 3),
            () => Navigator.pushNamedAndRemoveUntil(
                context, '/main', (route) => false));
      } else {
        Timer(
            const Duration(seconds: 3),
            () => Navigator.pushNamedAndRemoveUntil(
                context, '/sign-in', (route) => false));
      }
      // Timer(
      //     const Duration(seconds: 3),
      //     () => Navigator.pushNamedAndRemoveUntil(
      //         context, '/main', (route) => false));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: Get.width * 0.5,
          height: Get.width * 0.5,
          child: Image.asset("assets/icons/icon.png"),
        ),
      ),
    );
  }
}
