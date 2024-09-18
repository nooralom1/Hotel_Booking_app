
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarDialogBox extends StatefulWidget {
  const CalendarDialogBox({
    super.key,
  });

  @override
  State<CalendarDialogBox> createState() => _CalendarDialogBoxState();
}

class _CalendarDialogBoxState extends State<CalendarDialogBox> {
  DateTime toDay = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      toDay = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        content: SizedBox(
      height: Get.height * 0.4,
      child: TableCalendar(
        locale: "en_US",
        headerStyle: const HeaderStyle(
            leftChevronMargin: EdgeInsets.all(0),
            rightChevronMargin: EdgeInsets.all(0),
            formatButtonVisible: false,
            titleCentered: true),
        daysOfWeekHeight: 20,
        rowHeight: Get.height * 0.048,
        availableGestures: AvailableGestures.all,
        onDaySelected: _onDaySelected,
        focusedDay: toDay,
        selectedDayPredicate: (day) => isSameDay(day, toDay),
        firstDay: DateTime.utc(2020, 01, 01),
        lastDay: DateTime.utc(2050, 12, 31),
      ),
    ));
  }
}
