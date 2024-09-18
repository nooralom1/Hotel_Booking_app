class FavoriteListModel {
  List<Favorites>? favorites;

  FavoriteListModel({this.favorites});

  FavoriteListModel.fromJson(Map<String, dynamic> json) {
    if (json['favorites'] != null) {
      favorites = <Favorites>[];
      json['favorites'].forEach((v) {
        favorites!.add(Favorites.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (favorites != null) {
      data['favorites'] = favorites!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Favorites {
  String? image;
  String? name;
  String? location;
  String? price;

  Favorites({this.image, this.name, this.location, this.price});

  Favorites.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    name = json['name'];
    location = json['location'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image'] = image;
    data['name'] = name;
    data['location'] = location;
    data['price'] = price;
    return data;
  }
}
