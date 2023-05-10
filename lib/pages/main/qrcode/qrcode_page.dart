import 'package:flutter/material.dart';
import 'package:ilufa_168/theme.dart';
import 'package:provider/provider.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../../models/user_model.dart';
import '../../../providers/auth_provider.dart';

class QrCodePage extends StatefulWidget {
  const QrCodePage({super.key});

  @override
  State<QrCodePage> createState() => _QrCodePageState();
}

class _QrCodePageState extends State<QrCodePage> {
  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    UserModel? user = authProvider.user;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'QR Code Member',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: [
            QrImage(
              data: "${user?.member_id_key}",
              size: 300,
              // embeddedImage: AssetImage('assets/icons/icon.png'),
              // embeddedImageStyle: QrEmbeddedImageStyle(size: Size(80, 80)),
            ),
            // Center(
            //   child: Container(
            //     width: MediaQuery.of(context).size.width * 0.9,
            //     height: MediaQuery.of(context).size.width * 0.9,
            //     child: Image.asset(
            //       "assets/qrcode/qrcode.png",
            //       fit: BoxFit.fitWidth,
            //       width: MediaQuery.of(context).size.width * 0.3,
            //       height: MediaQuery.of(context).size.width * 0.3,
            //     ),
            //   ),
            // ),
            SizedBox(height: 30),
            Center(
              child: Text(
                '${user?.member_id_key}',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 2,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              width: MediaQuery.of(context).size.width * 0.9,
              // height: MediaQuery.of(context).size.width * 0.3,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Center(
                  child: Text(
                    "Tunjukan QR CODE ke kasir saat anda transaksi untuk mendapatkan point, stamp, dan promo lainnya.",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
