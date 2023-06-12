import 'package:flutter/material.dart';
import 'package:ilufa_168/pages/point/point_page.dart';
import 'package:provider/provider.dart';

import 'pages/error/update_page.dart';
import 'pages/main/main_page.dart';
import 'pages/sign_in_page.dart';
import 'pages/sign_up_page.dart';
import 'pages/splash_page.dart';
import 'providers/auth_provider.dart';
import 'providers/store_provider.dart';
import 'providers/tr_provider.dart';

import 'pages/main/history/riwayat/detail_faktur_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => StoreProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => TrProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          // '/': (context) => const MainPage(),
          '/': (context) => const SplashPage(),
          '/sign-in': (context) => const SignInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/main': (context) => const MainPage(),
          '/points': (context) => const PointPage(),
          '/update-page': (context) => const UpdatePage(),
          '/detail-transaksi': (context) => const DetailFakturView(),
        },
        // home: SplashPage()
      ),
    );
  }
}
