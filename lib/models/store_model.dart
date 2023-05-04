class StoreModel {
  int? store_id;
  int? store_area_id;
  String? branch_code;
  String? title;
  String? description;
  String? address;
  String? link_maps;

  StoreModel({
    required this.store_id,
    required this.store_area_id,
    required this.branch_code,
    required this.title,
    required this.description,
    required this.address,
    required this.link_maps,
  });
  StoreModel.fromJson(Map<String, dynamic> json) {
    store_id = json['store_id'];
    store_area_id = json['store_area_id'];
    branch_code = json['branch_code'];
    title = json['title'];
    description = json['description'];
    address = json['address'];
    link_maps = json['link_maps'];
  }

  Map<String, dynamic> toJson() {
    return {
      'store_id': store_id,
      'store_area_id': store_area_id,
      'branch_code': branch_code,
      'title': title,
      'description': description,
      'address': address,
      'link_maps': link_maps,
    };
  }
}
