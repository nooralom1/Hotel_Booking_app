class RecommendedHotelsListModel {
  List<RecommendedHotels>? recommendedHotels;

  RecommendedHotelsListModel({this.recommendedHotels});

  RecommendedHotelsListModel.fromJson(Map<String, dynamic> json) {
    if (json['recommendedHotels'] != null) {
      recommendedHotels = <RecommendedHotels>[];
      json['recommendedHotels'].forEach((v) {
        recommendedHotels!.add(RecommendedHotels.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (recommendedHotels != null) {
      data['recommendedHotels'] =
          recommendedHotels!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class RecommendedHotels {
  String? image;
  String? name;
  int? id;
  String? price;
  String? discount;
  double? rating;
  String? location;

  RecommendedHotels(
      {this.image,
      this.name,
      this.id,
      this.price,
      this.discount,
      this.rating,
      this.location});

  RecommendedHotels.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    name = json['name'];
    id = json['id'];
    price = json['price'];
    discount = json['discount'];
    rating = json['rating'];
    location = json['location'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image'] = image;
    data['name'] = name;
    data['id'] = id;
    data['price'] = price;
    data['discount'] = discount;
    data['rating'] = rating;
    data['location'] = location;
    return data;
  }
}
