import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:hotel_booking_app/database/recommended_hotels.dart';
import 'package:hotel_booking_app/model/recommended_hotels.dart';

class RecommendedHotelsService {
  static Future<RecommendedHotelsListModel?> recommendedHotelsService() async {
    try {
      RecommendedHotelsListModel response = RecommendedHotelsListModel.fromJson(
          jsonDecode(jsonEncode(RecommendedHotelsList.recommendedHotelsList)));
      return response;
    } catch (e) {
      debugPrint("Error: $e");
    }
    return null;
  }
}