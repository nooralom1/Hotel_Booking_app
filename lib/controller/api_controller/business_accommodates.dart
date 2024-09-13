import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:hotel_booking_app/database/business_accommodates.dart';
import 'package:hotel_booking_app/model/business_accommodates.dart';

class BusinessAccommodatesService {
  static Future<BusinessAccommodatesListModel?> businessAccommodatesService() async {
    try {
      BusinessAccommodatesListModel response = BusinessAccommodatesListModel.fromJson(
          jsonDecode(jsonEncode(BusinessAccommodatesList.businessAccommodatesList)));
      return response;
    } catch (e) {
      debugPrint("Error: $e");
    }
    return null;
  }
}