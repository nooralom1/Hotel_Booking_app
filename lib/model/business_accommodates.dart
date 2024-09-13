class BusinessAccommodatesListModel {
  List<BusinessAccommodates>? businessAccommodates;

  BusinessAccommodatesListModel({this.businessAccommodates});

  BusinessAccommodatesListModel.fromJson(Map<String, dynamic> json) {
    if (json['businessAccommodates'] != null) {
      businessAccommodates = <BusinessAccommodates>[];
      json['businessAccommodates'].forEach((v) {
        businessAccommodates!.add(new BusinessAccommodates.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.businessAccommodates != null) {
      data['businessAccommodates'] =
          this.businessAccommodates!.map((v) => v.toJson()).toList();
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['name'] = this.name;
    data['id'] = this.id;
    return data;
  }
}
