import 'package:flutter/cupertino.dart';

class VerificationService {
  static Future<bool> verificationService({
    required String num1,
    required String num2,
    required String num3,
    required String num4,
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
