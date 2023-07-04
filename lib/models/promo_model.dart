class PromoModel {
  int? id;
  String? title;
  String? image;

  PromoModel({
    required this.id,
    required this.title,
    required this.image,
  });
  PromoModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'image': image,
    };
  }
}
