import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../models/user_model.dart';
import '../../../providers/auth_provider.dart';
import '../../../providers/tr_provider.dart';
import 'riwayat/body_view.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({super.key});

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  // void initState() {
  //   getData();
  //   super.initState();
  // }

  // getData() async {
  //   AuthProvider authProvider = Provider.of<AuthProvider>(context);
  //   UserModel? user = authProvider.user;
  //   String? userMemberId = user?.member_id_key;
  //   Provider.of<TrProvider>(context, listen: false).getTr(userMemberId!);
  // }

  Widget build(BuildContext context) {
    // AuthProvider authProvider = Provider.of<AuthProvider>(context);
    // UserModel? user = authProvider.user;
    // String? userMemberId = user?.member_id_key;
    // Provider.of<TrProvider>(context).getTr(userMemberId!);

    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Riwayat'),
          backgroundColor: Colors.deepOrange,
          centerTitle: false,
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                child: Text("Riwayat"),
              ),
              Tab(
                child: Text("Point & Stamp"),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            // Text("data 1"),
            // Text("data 2"),
            BodyRiwayatView(),
            BodyRiwayatView(),
            // BodyPointStampView(),
          ],
        ),
      ),
    );
  }
}
