import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/user_model.dart';
import '../../providers/auth_provider.dart';

class CoinDataView extends StatefulWidget {
  const CoinDataView({super.key});

  @override
  State<CoinDataView> createState() => _CoinDataViewState();
}

class _CoinDataViewState extends State<CoinDataView> {
  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    UserModel? user = authProvider.user;
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: 10),
      height: 120,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.deepOrange,
        // borderRadius: BorderRadius.only(
        //     topLeft: Radius.circular(10),
        //     topRight: Radius.circular(10),
        //     bottomLeft: Radius.circular(10),
        //     bottomRight: Radius.circular(10)),
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
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    FontAwesomeIcons.coins,
                    color: Color(0xFFFFD900),
                    size: 28.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: RichText(
                      // ignore: prefer_const_constructors
                      text: TextSpan(
                        text: "${user?.dPoint}",
                        style:
                            TextStyle(color: Color(0xFFFFD900), fontSize: 26),
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          TextSpan(
                            // recognizer: TapGestureRecognizer()
                            //   ..onTap = () {
                            //     Get.to(SignUpView());
                            //   },
                            text: " point tersedia",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          )
                        ],
                      ),
                    ),
                    // child: Text(
                    //   "200",
                    //   style: TextStyle(fontSize: 24, color: Colors.white),
                    // ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                height: 35,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  onPressed: () {
                    // Get.off(DashboardView(), binding: DashboardBinding());
                    // Get.to(ExchangeCoin());
                  },
                  child: const Text(
                    'Tukar Point Sekarang',
                    style: TextStyle(color: Colors.deepOrange, fontSize: 14),
                  ),
                ),
              ),
              // Text(
              //   "Tukar Point Sekarang",
              //   style: TextStyle(fontSize: 18, color: Colors.white),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
