import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ilufa_168/models/user_model.dart';
import 'package:ilufa_168/providers/auth_provider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../theme.dart';
import 'card_promo_page.dart';

class BerandaPage extends StatefulWidget {
  const BerandaPage({super.key});

  @override
  State<BerandaPage> createState() => _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage> {
  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    authProvider.userget();
    UserModel? user = authProvider.user;
    String? userMemberId = user?.member_id_key;
    int? cekPoint = user?.dPoint as int?;

    _refresh() async {
      AuthProvider authProvider =
          Provider.of<AuthProvider>(context, listen: false);
      // .updatePointCek(userMemberId!, cekPoint! as int);
      if (await authProvider.updatePointCek(userMemberId!, cekPoint! as int)) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: alertColor,
            content: Text(
              "Refresh Berhasil",
              textAlign: TextAlign.center,
            ),
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: alertSuccesColor,
            content: Text(
              "The Data Has Been Updated",
              textAlign: TextAlign.center,
            ),
          ),
        );
      }
    }

    print(user);

    Widget Header() {
      return Padding(
        padding: const EdgeInsets.fromLTRB(15, 20, 15, 10),
        child: Row(
          children: [
            Expanded(
              flex: 8,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/setting/profile');
                    },
                    child: Container(
                      height: 55,
                      width: 55,
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://cdn.icon-icons.com/icons2/1369/PNG/512/-account-circle_89831.png'
                              // 'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//101/MTA-53591465/no-brand_no-brand_full01.jpg',
                              ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${user?.f_name}",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("${user?.member_status}",
                            style: TextStyle(
                                fontSize: 14, color: Colors.deepOrange)),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/notifikasi');
                },
                child: Icon(
                  FontAwesomeIcons.bell,
                  color: Colors.black,
                  size: 24.0,
                ),
              ),
            ),
          ],
        ),
      );
    }

    List imgList = [
      // 'assets/images/promo/promo.png',
      // 'https://i.ytimg.com/vi/_Dds6xJFSzA/hqdefault.jpg?sqp=-oaymwExCOADEI4CSFryq4qpAyMIARUAAIhCGAHwAQH4AdQGgALgA4oCDAgAEAEYfyBRKBkwDw==&rs=AOn4CLDLNsq6R6rcobMGzERdnhxJuZc1Cg',
      'https://img.ws.mms.shopee.co.id/bf2e42a7a6b0769e5a21982dd196771a',
      'https://img.sp.mms.shopee.co.id/fcff8e02882b902396566517ab50a3fc'
    ];
    List<T> map<T>(List list, Function handler) {
      List<T> result = [];
      for (var i = 0; i < list.length; i++) {
        result.add(handler(i, list[i]));
      }
      return result;
    }

    Widget CardPromoView() {
      return Container(
        child: CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 7),
            autoPlayAnimationDuration: Duration(milliseconds: 1000),
            autoPlayCurve: Curves.fastOutSlowIn,
            pauseAutoPlayOnTouch: true,
            enlargeCenterPage: true,
            viewportFraction: 0.90,
            scrollDirection: Axis.horizontal,
            // onPageChanged: (index, reason) {
            //   setState(() {
            //     _currentIndex = index;
            //   });
            // }
          ),
          items: imgList.map((imgUrl) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 1,
                        blurRadius: 2,
                        offset: Offset(0, 1), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Image.network(
                    imgUrl,
                    fit: BoxFit.fill,
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    // height: 100.0,
                    // width: 200.0,
                  ),
                );
              },
            );
          }).toList(),
        ),
      );
    }

    Widget CardMenuPointStamp() {
      return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 5,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/points');
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      // height: 60,
                      // width: double.infinity,
                      constraints: BoxConstraints(
                        minHeight: 60,
                        minWidth: double.infinity,
                        // maxHeight: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5),
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Wrap(
                              children: [
                                Container(
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 8, 0),
                                    child: Icon(
                                      FontAwesomeIcons.coins,
                                      color: Color(0xFFFFD900),
                                      size: 26.0,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Icon(
                              FontAwesomeIcons.chevronRight,
                              color: Colors.grey[400],
                              size: 16.0,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/update-page');
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      // height: 60,
                      // width: double.infinity,
                      constraints: BoxConstraints(
                        minHeight: 60,
                        minWidth: double.infinity,
                        // maxHeight: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5),
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Wrap(
                              children: [
                                Container(
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 8, 0),
                                    child: Icon(
                                      FontAwesomeIcons.stamp,
                                      color: Color(0xFF009000),
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Stamp",
                                      style: TextStyle(fontSize: 12),
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
                          Expanded(
                            flex: 1,
                            child: Icon(
                              FontAwesomeIcons.chevronRight,
                              color: Colors.grey[400],
                              size: 16.0,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  flex: 5,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/update-page');
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      // height: 60,
                      // width: double.infinity,
                      constraints: BoxConstraints(
                        minHeight: 60,
                        minWidth: double.infinity,
                        // maxHeight: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5),
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Row(
                              children: [
                                Container(
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 8, 0),
                                    child: Icon(
                                      FontAwesomeIcons.award,
                                      color: Colors.blue,
                                      size: 26.0,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Column(
                                    children: [
                                      Text(
                                        "Reward",
                                        style: TextStyle(fontSize: 18),
                                      ),
                                      // Text(
                                      //   "1000",
                                      //   style: TextStyle(fontSize: 12),
                                      // ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Icon(
                              FontAwesomeIcons.chevronRight,
                              color: Colors.grey[400],
                              size: 16.0,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/promo');
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      // height: 60,
                      // height: min,
                      width: double.infinity,
                      constraints: BoxConstraints(
                        minHeight: 60,
                        minWidth: double.infinity,
                        // maxHeight: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5),
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Row(
                              children: [
                                Container(
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 8, 0),
                                    child: Icon(
                                      FontAwesomeIcons.tags,
                                      color: Colors.red,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "Promo",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    // Text(
                                    //   "3",
                                    //   style: TextStyle(fontSize: 16),
                                    // ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Icon(
                              FontAwesomeIcons.chevronRight,
                              color: Colors.grey[400],
                              size: 16.0,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    return SafeArea(
      child: RefreshIndicator(
        onRefresh: _refresh,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Header(),
              SizedBox(height: 10),
              CardPromoView(),
              SizedBox(height: 10),
              CardMenuPointStamp(),
              SizedBox(height: 10),
              CardPromo1Page(),
            ],
          ),
        ),
        displacement: 20.0,
        color: Colors.blue,
        backgroundColor: Colors.white,
        strokeWidth: 3.0,
        semanticsLabel: 'Pull to refresh',
        semanticsValue: 'Refresh',
      ),
    );
  }
}
