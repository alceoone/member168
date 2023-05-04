// ignore_for_file: non_constant_identifier_names

class UserModel {
  String? id;
  String? member_id_key;
  String? username;
  String? f_name;
  String? l_name;
  String? no_telp;
  String? email;
  String? member_status;
  String? image_profile;
  String? token;

  UserModel({
    required this.id,
    required this.member_id_key,
    required this.username,
    required this.f_name,
    required this.l_name,
    required this.no_telp,
    required this.email,
    required this.member_status,
    required this.image_profile,
    required this.token,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    member_id_key = json['member_id_key'];
    username = json['username'];
    f_name = json['f_name'];
    l_name = json['l_name'];
    no_telp = json['no_telp'];
    email = json['email'];
    image_profile = json['image_profile'];
    member_status = json['member_status'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'member_id_key': member_id_key,
      'username': username,
      'f_name': f_name,
      'l_name': l_name,
      'no_telp': no_telp,
      'email': email,
      'member_status': member_status,
      'image_profile': image_profile,
      'token': token,
    };
  }
}
