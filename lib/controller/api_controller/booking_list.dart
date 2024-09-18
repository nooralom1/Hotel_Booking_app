import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:hotel_booking_app/database/booking_list.dart';
import 'package:hotel_booking_app/model/booking_list.dart';

class BookingListService {
  static Future<BookingListModel?> bookingListService() async {
    try {
      BookingListModel response = BookingListModel.fromJson(
          jsonDecode(jsonEncode(BookingListData.bookingListData)));
      return response;
    } catch (e) {
      debugPrint("Error: $e");
    }
    return null;
  }
}
