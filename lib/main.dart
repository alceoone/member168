import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/main/main_page.dart';
import 'pages/sign_in_page.dart';
import 'pages/sign_up_page.dart';
import 'pages/splash_page.dart';
import 'providers/auth_provider.dart';
import 'providers/store_provider.dart';

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
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          // '/': (context) => const MainPage(),
          '/': (context) => const SplashPage(),
          '/sign-in': (context) => const SignInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/main': (context) => const MainPage(),
        },
        // home: SplashPage()
      ),
    );
  }
}
