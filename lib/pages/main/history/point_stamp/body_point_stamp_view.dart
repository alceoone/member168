import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BodyPointStampView extends StatelessWidget {
  const BodyPointStampView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          color: Colors.grey,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 8,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Icon(
                          FontAwesomeIcons.circleArrowDown,
                          color: Colors.green,
                          size: 28.0,
                        ),
                      ),
                      Expanded(
                        flex: 7,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          // decoration: BoxDecoration(color: Colors.amber),
                          // width: double.infinity,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Cashback",
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.deepOrange),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFFFD900),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(5),
                                        topRight: Radius.circular(5),
                                        bottomLeft: Radius.circular(5),
                                        bottomRight: Radius.circular(5),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text(
                                        "+ 10000",
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 3),
                                child: Text(
                                  "Selamat Kamu mendapatkan poin 1000 dri transaksi di toko",
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.grey[600]),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 2),
                                padding: EdgeInsets.all(1),
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(5),
                                    topRight: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                    bottomRight: Radius.circular(5),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Text(
                                    "03-04-2023",
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(
                                        fontSize: 8, color: Colors.grey[500]),
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
              ],
            ),
          ),
        ),
        Divider(
          color: Colors.grey,
        ),
      ],
    );
  }
}
