import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ilufa_168/providers/store_provider.dart';
import 'package:provider/provider.dart';

class StorePage extends StatefulWidget {
  const StorePage({super.key});

  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  @override
  Widget build(BuildContext context) {
    StoreProvider storeProvider = Provider.of<StoreProvider>(context);
    print(storeProvider.stores);

    Widget box(store) {
      return GestureDetector(
        onTap: () {
          // Get.to(const DetailPromoView());
        },
        child: Container(
          margin: EdgeInsets.fromLTRB(10, 5, 5, 10),
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
                'https://api.ilufa.co.id/storage/setting/store/D6JpNcePt95MKSdNynHurZUCI8LPXYCZwNqxVswr.jpg',
                fit: BoxFit.fill,
                width: double.infinity,
                // width: 300,
                height: 200.0,
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
                          "${store.title}",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        width: double.infinity,
                        // width: 300,
                        child: Row(
                          children: [
                            Expanded(
                                flex: 1,
                                child: Icon(
                                  FontAwesomeIcons.locationPin,
                                  color: Colors.red,
                                  size: 18.0,
                                )),
                            Expanded(
                              flex: 9,
                              child: Text(
                                "${store.address}",
                                style: TextStyle(fontSize: 12),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Store 168 iLuFA'),
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
            children: storeProvider.stores.map((store) => box(store)).toList(),
          ),
        ),
      ),
    );
  }
}
