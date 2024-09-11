import 'package:flutter/cupertino.dart';

class WelcomeService {
  static Future<bool> welcomeService({
    required String location,
    required String checkIn,
    required String checkOut,
  }) async {
    try {
      await Future.delayed(const Duration(seconds: 2));
      return true;
    } catch (e) {
      debugPrint("Error: $e");
    }
    return false;
  }
}
