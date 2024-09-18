import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:hotel_booking_app/database/favorite_list.dart';
import 'package:hotel_booking_app/model/favorite_list.dart';

class FavoriteListService {
  static Future<FavoriteListModel?> recommendedHotelsService() async {
    try {
      FavoriteListModel response = FavoriteListModel.fromJson(
          jsonDecode(jsonEncode(FavoriteList.favoriteList)));
      return response;
    } catch (e) {
      debugPrint("Error: $e");
    }
    return null;
  }
}
