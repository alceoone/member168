import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ilufa_168/pages/main/history/history_page.dart';
import 'package:ilufa_168/pages/main/store/store_page.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../models/user_model.dart';
import '../../providers/auth_provider.dart';
import '../../providers/tr_provider.dart';
import '../../services/auth_service.dart';
import '../../theme.dart';
import 'account/account_page.dart';
import 'beranda/beranda_page.dart';
import 'qrcode/qrcode_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // Provider.of<AuthProvider>(context, listen: false).updatePointCek();

    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    UserModel? user = authProvider.user;
    String? userMemberId = user?.member_id_key;
    int? cekPoint = user?.dPoint as int?;
    TrProvider trProvider = Provider.of<TrProvider>(context);

    // Timer.periodic(Duration(seconds: 1), (timer) {
    //   Provider.of<AuthProvider>(context, listen: false)
    //       .updatePointCek(userMemberId!, cekPoint! as int);
    // });

    if (trProvider.tr.isEmpty) {
      trProvider.getTr(userMemberId!);
      print('is empty');
    } else {
      Provider.of<AuthProvider>(context, listen: false)
          .updatePointCek(userMemberId!, cekPoint! as int);

      print('Not empty');
    }

    Widget cartButton() {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.shopping_bag_rounded),
        ),
      );
    }

    Widget customBottomNav() {
      return BottomNavigationBar(
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.redAccent,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          currentIndex: currentIndex,
          onTap: (value) {
            // print(value);
            setState(() {
              currentIndex = value;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Beranda',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.store),
              label: 'Toko',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.qr_code),
              label: 'Barcode',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.receipt),
              label: 'Riwayat',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Akun',
            ),
          ]);
    }

    Widget bodyData() {
      switch (currentIndex) {
        case 0:
          return BerandaPage();
          break;
        case 1:
          return StorePage();
          break;
        case 2:
          return QrCodePage();
          break;
        case 3:
          return HistoryPage();
          break;
        case 4:
          return AccountPage();
          break;

        default:
          return BerandaPage();
      }
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      bottomNavigationBar: customBottomNav(),
      body: bodyData(),
    );
  }
}
