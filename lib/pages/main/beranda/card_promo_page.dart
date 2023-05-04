import 'package:flutter/material.dart';

class CardPromo1Page extends StatelessWidget {
  const CardPromo1Page({super.key});

  @override
  Widget build(BuildContext context) {
    List<dynamic> promo = [
      {
        "id": 1,
        "date": "17 Mei - 20 Mei",
        "deskripsi": "Promo Diskon di Blibli",
        'image': "LANDING PAGE BLIBLI w HIPPO.png",
      },
      {
        "id": 2,
        "date": "17 Mei - 20 Mei",
        "deskripsi": "Promo Diskon di Blibli",
        'image': "LANDING PAGE BLIBLI w MEE.png",
      },
      {
        "id": 3,
        "date": "17 Mei - 20 Mei",
        "deskripsi": "Promo Diskon di Blibli",
        'image': "LANDING PAGE SHOPEE w HIPPO.png",
      },
      {
        "id": 4,
        "date": "17 Mei - 20 Mei",
        "deskripsi": "Promo Diskon di Blibli",
        'image': "LANDING PAGE TOKPED w MEE.png",
      }
    ];
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Promo",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
              Text("Lihat Semua",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.w400)),
            ],
          ),
        ),
        Container(
          // margin: EdgeInsets.fromLTRB(15, 10, 0, 10),
          height: 230.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: promo.map((data) {
              return box(
                data["image"],
                data["date"],
                data["deskripsi"],
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  Widget box(String dataImage, String dataDate, String dataDeskripsi) {
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
              Image.asset(
                "assets/image/${dataImage}",
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
                          "${dataDeskripsi}",
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                      Container(
                        // width: double.infinity,
                        width: 300,
                        child: Text(
                          "${dataDate}",
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
