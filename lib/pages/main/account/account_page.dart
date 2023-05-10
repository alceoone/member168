import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../models/user_model.dart';
import '../../../providers/auth_provider.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    UserModel? user = authProvider.user;

    logout() async {
      final pref = await SharedPreferences.getInstance();
      // pref.remove();
      pref.clear(); // <- remove sharedpreferences
      print(pref.clear());

      Navigator.pushNamed(context, '/sign-in');
    }

    Widget AkunImageView() {
      return Container(
        child: Stack(
          children: [
            ClipPath(
              clipper: ClipPathClass(),
              child: Container(
                height: 180,
                width: Get.width,
                color: Colors.deepOrange,
              ),
            ),
            Center(
              child: Column(
                children: [
                  Container(
                    height: 90,
                    width: 90,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://cdn.icon-icons.com/icons2/1369/PNG/512/-account-circle_89831.png'
                              // 'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//101/MTA-53591465/no-brand_no-brand_full01.jpg',
                              )),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "${user?.f_name} ${user?.l_name}",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  SizedBox(height: 10),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 2,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        child: Column(
                          children: [
                            // Container(
                            //   width: double.infinity,
                            //   child: Text(
                            //     "Member Exsekutif",
                            //     style: TextStyle(
                            //       fontSize: 24,
                            //     ),
                            //   ),
                            // ),
                            // SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    // print("Container clicked");
                                    // Get.to(const CoinView());
                                  },
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 0, 8, 0),
                                          child: Icon(
                                            FontAwesomeIcons.coins,
                                            color: Color(0xFFFFD900),
                                            size: 24.0,
                                          ),
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            "Point",
                                            style: TextStyle(fontSize: 12),
                                          ),
                                          Text(
                                            "${user?.dPoint}",
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 0, 8, 0),
                                          child: Icon(
                                            FontAwesomeIcons.stamp,
                                            color: Color(0xFF009000),
                                            size: 24.0,
                                          ),
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            "Stamp",
                                            style: TextStyle(
                                              fontSize: 12,
                                            ),
                                          ),
                                          Text(
                                            "0",
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  child: Row(
                                    children: [
                                      Container(
                                        child: Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 0, 8, 0),
                                          child: Icon(
                                            FontAwesomeIcons.idCard,
                                            color: Color(0xFFFF0000),
                                            size: 24.0,
                                          ),
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            "Member",
                                            style: TextStyle(
                                              fontSize: 12,
                                            ),
                                          ),
                                          Text(
                                            "Area",
                                            style: TextStyle(
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget AkunMenuView() {
      return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                // print("Container clicked");
                // Get.to(const RewardView());
              },
              child: Container(
                height: 30,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Icon(
                        FontAwesomeIcons.award,
                        color: Colors.grey[700],
                        size: 18.0,
                      ),
                    ),
                    Expanded(
                        flex: 8,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Text(
                            "Reward",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w300,
                                color: Colors.grey[700]),
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: Icon(
                          FontAwesomeIcons.chevronRight,
                          color: Colors.grey[700],
                          size: 18.0,
                        )),
                  ],
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Container(
              height: 30,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Icon(
                      FontAwesomeIcons.store,
                      color: Colors.grey[700],
                      size: 18.0,
                    ),
                  ),
                  Expanded(
                      flex: 8,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Text(
                          "Store",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                              color: Colors.grey[700]),
                        ),
                      )),
                  Expanded(
                      flex: 1,
                      child: Icon(
                        FontAwesomeIcons.chevronRight,
                        color: Colors.grey[700],
                        size: 18.0,
                      )),
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Container(
              height: 30,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Icon(
                      FontAwesomeIcons.arrowsRotate,
                      color: Colors.grey[700],
                      size: 18.0,
                    ),
                  ),
                  Expanded(
                      flex: 8,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Text(
                          "Riwayat",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                              color: Colors.grey[700]),
                        ),
                      )),
                  Expanded(
                      flex: 1,
                      child: Icon(
                        FontAwesomeIcons.chevronRight,
                        color: Colors.grey[700],
                        size: 18.0,
                      )),
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Container(
              height: 30,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Icon(
                      FontAwesomeIcons.circleQuestion,
                      color: Colors.grey[700],
                      size: 18.0,
                    ),
                  ),
                  Expanded(
                      flex: 8,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Text(
                          "FAQ",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                              color: Colors.grey[700]),
                        ),
                      )),
                  Expanded(
                      flex: 1,
                      child: Icon(
                        FontAwesomeIcons.chevronRight,
                        color: Colors.grey[700],
                        size: 18.0,
                      )),
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Container(
              height: 30,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Icon(
                      FontAwesomeIcons.phone,
                      color: Colors.grey[700],
                      size: 18.0,
                    ),
                  ),
                  Expanded(
                      flex: 8,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Text(
                          "Hubungi Kami",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                              color: Colors.grey[700]),
                        ),
                      )),
                  Expanded(
                      flex: 1,
                      child: Icon(
                        FontAwesomeIcons.chevronRight,
                        color: Colors.grey[700],
                        size: 18.0,
                      )),
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Container(
              height: 30,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Icon(
                      FontAwesomeIcons.fileContract,
                      color: Colors.grey[700],
                      size: 18.0,
                    ),
                  ),
                  Expanded(
                      flex: 8,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Text(
                          "Kebijakan Privasi",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                              color: Colors.grey[700]),
                        ),
                      )),
                  Expanded(
                      flex: 1,
                      child: Icon(
                        FontAwesomeIcons.chevronRight,
                        color: Colors.grey[700],
                        size: 18.0,
                      )),
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            GestureDetector(
              onTap: logout,
              child: Container(
                height: 30,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Icon(
                        FontAwesomeIcons.reply,
                        color: Colors.red,
                        size: 18.0,
                      ),
                    ),
                    Expanded(
                        flex: 9,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Text(
                            "Keluar",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Colors.red),
                          ),
                        )),
                  ],
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Member Eksekutif'),
        centerTitle: false,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.gear,
              color: Colors.white,
              // size: 32.0,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.bell,
              color: Colors.white,
              // size: 32.0,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.envelope,
              color: Colors.white,
              // size: 32.0,
            ),
          ),
        ],
        backgroundColor: Colors.deepOrange,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AkunImageView(),
            AkunMenuView(),
          ],
        ),
      ),
    );
  }
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 30);
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 30,
    );

    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
