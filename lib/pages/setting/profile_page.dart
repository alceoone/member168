import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/user_model.dart';
import '../../providers/auth_provider.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Widget editName(UserModel? user) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Text(
              "Nama",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Expanded(
              flex: 6,
              child: Row(
                children: [
                  Expanded(
                    flex: 8,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '${user?.f_name} ${user?.l_name}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                      ),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }

  Widget editUsername(UserModel? user) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Text(
              "Username",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Row(
              children: [
                Expanded(
                  flex: 8,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '${user?.username}',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget Member() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Text(
              "Member",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Eksekutif',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.orange,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget UserID() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Text(
              "User ID",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Expanded(
              flex: 6,
              child: Row(
                children: [
                  Expanded(
                    flex: 8,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '25586889555',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.copy,
                        size: 16,
                      ),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }

  Widget MemberID(UserModel? user) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Text(
              "Member ID",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Expanded(
              flex: 6,
              child: Row(
                children: [
                  Expanded(
                    flex: 8,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '${user?.member_id_key}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.copy,
                        size: 16,
                      ),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }

  Widget editEmail(UserModel? user) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Text(
              "Email",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Expanded(
              flex: 6,
              child: Row(
                children: [
                  Expanded(
                    flex: 8,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '${user?.email}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                      ),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }

  Widget editNomorHP(UserModel? user) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Text(
              "Nomor HP",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Expanded(
              flex: 6,
              child: Row(
                children: [
                  Expanded(
                    flex: 8,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '${user?.no_telp}',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                      ),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }

  Widget editJenisKelamin() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Text(
              "Jenis Kelamin",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Expanded(
              flex: 6,
              child: Row(
                children: [
                  Expanded(
                    flex: 8,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Laki - Laki',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                      ),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }

  Widget editTanggalLahir() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Text(
              "Tanggal Lahir",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Expanded(
              flex: 6,
              child: Row(
                children: [
                  Expanded(
                    flex: 8,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '1 Januari 1998',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                      ),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }

  Widget editAlamat() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Text(
              "Alamat",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey[600],
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Expanded(
              flex: 6,
              child: Row(
                children: [
                  Expanded(
                    flex: 8,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Jl. Gatot Subroto, Kemlayan, Kec. Serengan, Kota Surakarta, Jawa Tengah 57152',
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 16,
                      ),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    UserModel? user = authProvider.user;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ubah Profil'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Column(
        children: [
          Container(
            height: 150,
            color: Colors.white,
            child: Center(
                child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 90,
                  width: 90,
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://cdn.icon-icons.com/icons2/1369/PNG/512/-account-circle_89831.png'
                            // 'https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//101/MTA-53591465/no-brand_no-brand_full01.jpg',
                            )),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Ubah Foto Profil",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    decorationThickness: 1,
                  ),
                ),
              ],
            )),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Info Profile",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      decorationThickness: 2,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  editName(user),
                  SizedBox(
                    height: 5,
                  ),
                  editUsername(user),
                  SizedBox(
                    height: 5,
                  ),
                  Member(),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Info Pribadi",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      decorationThickness: 2,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  // UserID(),
                  // SizedBox(
                  //   height: 5,
                  // ),
                  MemberID(user),
                  SizedBox(
                    height: 5,
                  ),
                  editEmail(user),
                  SizedBox(
                    height: 5,
                  ),
                  editNomorHP(user),
                  SizedBox(
                    height: 5,
                  ),
                  // editJenisKelamin(),
                  // SizedBox(
                  //   height: 5,
                  // ),
                  // editTanggalLahir(),
                  // SizedBox(
                  //   height: 5,
                  // ),
                  // editAlamat(),
                  // SizedBox(
                  //   height: 5,
                  // ),
                ],
              ),
            ),
          ),
          // Container(
          //   height: 50,
          //   color: Colors.green,
          //   child: Center(
          //     child: Text(
          //       'Bagian Bawah (Fixed)',
          //       style: TextStyle(color: Colors.white, fontSize: 20),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
