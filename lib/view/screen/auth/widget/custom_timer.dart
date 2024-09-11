import 'package:flutter/material.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';

class CustomTimer extends StatelessWidget {
  const CustomTimer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TimerCountdown(
      spacerWidth: 02,
      enableDescriptions: false,
      format: CountDownTimerFormat.minutesSeconds,
      endTime: DateTime.now().add(
        const Duration(
          minutes: 02,
          seconds: 00,
        ),
      ),
    );
  }
}
