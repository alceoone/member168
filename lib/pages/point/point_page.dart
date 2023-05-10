import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'coin_data_view.dart';
import 'coin_menu_tab.dart';

class PointPage extends StatelessWidget {
  const PointPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Point iLuFA kamu'),
        centerTitle: false,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.circleQuestion,
              color: Colors.white,
              // size: 32.0,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.shareNodes,
              color: Colors.white,
              // size: 32.0,
            ),
          ),
        ],
        backgroundColor: Colors.deepOrange,
        elevation: 0,
      ),
      body: Column(
        children: [
          CoinDataView(),
          SizedBox(height: 10),
          CoinMenuTab(),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
