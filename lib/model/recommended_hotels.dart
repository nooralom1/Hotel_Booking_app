class RecommendedHotelsListModel {
  List<RecommendedHotels>? recommendedHotels;

  RecommendedHotelsListModel({this.recommendedHotels});

  RecommendedHotelsListModel.fromJson(Map<String, dynamic> json) {
    if (json['recommendedHotels'] != null) {
      recommendedHotels = <RecommendedHotels>[];
      json['recommendedHotels'].forEach((v) {
        recommendedHotels!.add(new RecommendedHotels.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.recommendedHotels != null) {
      data['recommendedHotels'] =
          this.recommendedHotels!.map((v) => v.toJson()).toList();
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['name'] = this.name;
    data['id'] = this.id;
    data['price'] = this.price;
    data['discount'] = this.discount;
    data['rating'] = this.rating;
    data['location'] = this.location;
    return data;
  }
}
