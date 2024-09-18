class BookingListModel {
  List<Bookings>? bookings;

  BookingListModel({this.bookings});

  BookingListModel.fromJson(Map<String, dynamic> json) {
    if (json['bookings'] != null) {
      bookings = <Bookings>[];
      json['bookings'].forEach((v) {
        bookings!.add(Bookings.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (bookings != null) {
      data['bookings'] = bookings!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Bookings {
  String? image;
  String? name;
  String? checkIn;
  String? checkOut;
  int? guest;
  int? room;

  Bookings(
      {this.image,
        this.name,
        this.checkIn,
        this.checkOut,
        this.guest,
        this.room});

  Bookings.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    name = json['name'];
    checkIn = json['check-in'];
    checkOut = json['check-out'];
    guest = json['guest'];
    room = json['room'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image'] = image;
    data['name'] = name;
    data['check-in'] = checkIn;
    data['check-out'] = checkOut;
    data['guest'] = guest;
    data['room'] = room;
    return data;
  }
}
