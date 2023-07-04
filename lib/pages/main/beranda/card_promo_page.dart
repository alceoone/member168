import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/promo_provider.dart';

class CardPromo1Page extends StatefulWidget {
  const CardPromo1Page({super.key});

  @override
  State<CardPromo1Page> createState() => _CardPromo1PageState();
}

class _CardPromo1PageState extends State<CardPromo1Page> {
  @override
  Widget build(BuildContext context) {
    PromoProvider promoProvider = Provider.of<PromoProvider>(context);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Promo",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/promo');
                },
                child: Text(
                  "Lihat Semua",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
        ),
        Container(
          // margin: EdgeInsets.fromLTRB(15, 10, 0, 10),
          height: 230.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: promoProvider.promos.map((promo) => box(promo)).toList(),
          ),
        ),
      ],
    );
  }

  Widget box(promo) {
    return GestureDetector(
      onTap: () {
        // Get.to(const DetailPromoView());
      },
      child: Container(
          margin: EdgeInsets.fromLTRB(15, 10, 0, 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(0, 1), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            children: [
              Image.network(
                "http://beta.ilufa.co.id${promo.image}",
                fit: BoxFit.fitWidth,
                width: 300,
                height: 150.0,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        // width: double.infinity,
                        width: 300,
                        child: Text(
                          "${promo.title}",
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                      // Container(
                      //   // width: double.infinity,
                      //   width: 300,
                      //   child: Text(
                      //     "${dataDate}",
                      //     style: TextStyle(fontSize: 10),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
