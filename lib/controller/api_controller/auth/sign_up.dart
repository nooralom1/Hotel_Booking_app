import 'package:flutter/cupertino.dart';

class SignUpService {
  static Future<bool> signUpService({
    required String name,
    required String mail,
    required String pass,
  }) async {
    try {
      await Future.delayed(const Duration(seconds: 1));
      return true;
    } catch (e) {
      debugPrint("Error: $e");
    }
    return false;
  }
}
