import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../providers/promo_provider.dart';

class PromotionPage extends StatefulWidget {
  const PromotionPage({super.key});

  @override
  State<PromotionPage> createState() => _PromotionPageState();
}

class _PromotionPageState extends State<PromotionPage> {
  @override
  Widget build(BuildContext context) {
    PromoProvider promoProvider = Provider.of<PromoProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Promo 168 iLuFA'),
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
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: promoProvider.promos.map((promo) => box(promo)).toList(),
          ),
        ),
      ),
    );
  }

  Widget box(promo) {
    return GestureDetector(
      onTap: () {
        // Get.to(const DetailPromoView());
      },
      child: Container(
          margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
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
                // width: 300,
                // height: 150.0,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        // width: 300,
                        child: Text(
                          "${promo.title}",
                          style: TextStyle(fontSize: 16),
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
