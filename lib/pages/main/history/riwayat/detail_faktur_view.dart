import 'dart:convert';

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';
import 'package:xml/xml.dart';

class DetailFakturView extends StatelessWidget {
  // final String tr;
  const DetailFakturView({super.key});

  @override
  Widget build(BuildContext context) {
    final String tr = ModalRoute.of(context)!.settings.arguments as String;
    final Map<String, dynamic> decodedData = json.decode(tr);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Faktur Pembelian'),
        centerTitle: false,
        backgroundColor: Colors.deepOrange,
      ),
      body: Container(
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              child: Center(
                child: Text(
                  decodedData.toString(),
                  // "iLuFA Jelas Lebih Murah",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              child: Text(
                "No.Pesanan: 10-552502522",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Kasir: Sugeng 1",
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "Sales: Sugeng 2",
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Total Pembayaran",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        "Rp1.856.222",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("Waktu Pembayaran"),
                      SizedBox(
                        height: 3,
                      ),
                      Text("02/12/23"),
                    ],
                  ),
                ),
              ],
            ),
            Divider(
              color: Colors.grey,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              child: Text(
                "Rincian Pebelian",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 7,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Softcase Redmi 10"),
                      Text("Softcase Redmi 10"),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("1x"),
                      Text("Rp 10.000"),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
