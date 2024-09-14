class BusinessAccommodatesListModel {
  List<BusinessAccommodates>? businessAccommodates;

  BusinessAccommodatesListModel({this.businessAccommodates});

  BusinessAccommodatesListModel.fromJson(Map<String, dynamic> json) {
    if (json['businessAccommodates'] != null) {
      businessAccommodates = <BusinessAccommodates>[];
      json['businessAccommodates'].forEach((v) {
        businessAccommodates!.add(BusinessAccommodates.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (businessAccommodates != null) {
      data['businessAccommodates'] =
          businessAccommodates!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class BusinessAccommodates {
  String? image;
  String? name;
  int? id;

  BusinessAccommodates({this.image, this.name, this.id});

  BusinessAccommodates.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    name = json['name'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image'] = image;
    data['name'] = name;
    data['id'] = id;
    return data;
  }
}
