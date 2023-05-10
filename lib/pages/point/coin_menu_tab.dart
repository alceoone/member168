import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CoinMenuTab extends StatefulWidget {
  const CoinMenuTab({super.key});

  @override
  State<CoinMenuTab> createState() => _CoinMenuTabState();
}

class _CoinMenuTabState extends State<CoinMenuTab> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: Text(
                "Riwayat",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Container(
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
                                Text(
                                  "Cashback",
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.deepOrange),
                                ),
                                Text(
                                  "Selamat Kamu mendapatkan point sebesar 1000",
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.grey),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 2),
                                  padding: EdgeInsets.all(1),
                                  decoration: BoxDecoration(
                                    color: Colors.grey[100],
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
                    flex: 2,
                    child: Text(
                      '+ 1000',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 220, 166, 4),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Container(
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
                            FontAwesomeIcons.circleArrowUp,
                            color: Colors.red,
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
                                Text(
                                  "Penukaran",
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.deepOrange),
                                ),
                                Text(
                                  "point anda telah di potong sebesar 10000",
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.grey),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 2),
                                  padding: EdgeInsets.all(1),
                                  decoration: BoxDecoration(
                                    color: Colors.grey[100],
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
                    flex: 2,
                    child: Text(
                      '- 10000',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
