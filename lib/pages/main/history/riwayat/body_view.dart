import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../../../../providers/tr_provider.dart';
import 'detail_faktur_view.dart';

class BodyRiwayatView extends StatefulWidget {
  const BodyRiwayatView({super.key});

  @override
  State<BodyRiwayatView> createState() => _BodyRiwayatViewState();
}

class _BodyRiwayatViewState extends State<BodyRiwayatView> {
  @override
  Widget build(BuildContext context) {
    TrProvider trProvider = Provider.of<TrProvider>(context);
    Widget box(tr) {
      return GestureDetector(
        onTap: () {
          // print("Container clicked");
        },
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 8,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 8,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          // decoration: BoxDecoration(color: Colors.amber),
                          // width: double.infinity,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Pembelian Berhasil - ${tr.nomorInvoice}",
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontSize: 16, color: Colors.deepOrange),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5),
                                child: Text(
                                  "Pembelian dengan No Nota ${tr.nomorInvoice} Berhasi di Lakukan",
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey[600]),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 2),
                                padding: EdgeInsets.all(1),
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Text(
                                    "${tr.created}",
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey[500]),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Icon(
                    FontAwesomeIcons.chevronRight,
                    color: Colors.grey,
                    size: 16.0,
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Column(
      children: [
        Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                color: Colors.grey[200],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Riwayat Pembelian",
                      style: TextStyle(fontSize: 12),
                    ),
                    Text(
                      "Lihat Semua",
                      style: TextStyle(fontSize: 12, color: Colors.deepOrange),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: trProvider.tr.map((tr) => box(tr)).toList(),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
