import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:saytu_jigueen_ni/utils/global.color.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_utils/get_utils.dart';
class Caladar extends StatefulWidget {
  const Caladar({Key? key}) : super(key: key);

  @override
  State<Caladar> createState() => _CaladarState();
}

class _CaladarState extends State<Caladar> {
  late DateTime selectedDate;
  List<DateTime> periodDates = [
    DateTime(2023, 1, 5),
    DateTime(2023, 2, 2),
    DateTime(2023, 3, 1),
    // Ajoutez ici les dates des règles précédentes ou futures
  ];
  bool isPeriod(DateTime date) {
    for (var periodDate in periodDates) {
      if (date.year == periodDate.year &&
          date.month == periodDate.month &&
          date.day == periodDate.day) {
        return true;
      }
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    var date;
    bool isSelected = date.year == selectedDate.year &&
        date.month == selectedDate.month &&
        date.day == selectedDate.day;
    bool isPeriodDate = isPeriod(date);
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedDate = date;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          color: isSelected ? Colors.blue : Colors.transparent,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              date.day.toString(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: isPeriodDate ? Colors.red : Colors.black,
              ),
            ),
            if (isPeriodDate)
              SizedBox(height: 4.0),
            if (isPeriodDate)
              Container(
                width: 6.0,
                height: 6.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
              ),
          ],
        ),
      ),
    );
  }

  List<Widget> buildCalendarDays(DateTime date) {
    DateTime firstDayOfMonth = DateTime(date.year, date.month, 1);
    int daysInMonth = DateTime(date.year, date.month + 1, 0).day;
    int weekdayOfFirstDay = firstDayOfMonth.weekday;
    List<Widget> calendarDays = [];
    for (var i = 0; i < weekdayOfFirstDay - 1; i++) {
      calendarDays.add(Container());
    }

    for (var i = 1; i <= daysInMonth; i++) {
      DateTime currentDate = DateTime(date.year, date.month, i);
      calendarDays.add(buildCalendarDays(currentDate) as Widget);
    }

    return calendarDays;

  }
  @override
  void initState() {
    super.initState();
    selectedDate = DateTime.now();
  }

  @override
  Widge(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calendrier Menstruel'),
      ),
      body: Column(
        children: [
          TableCalendar(
            selectedDate: selectedDate,
            onDaySelected: (date, _) {
              setState(() {
                selectedDate = date;
              });
            },
          ),
          SizedBox(height: 16.0),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 7,
            children: buildCalendarDays(selectedDate),
          ),
        ],
      ),
    );
  }
}

TableCalendar({required DateTime selectedDate, required Null Function(dynamic date, dynamic _) onDaySelected}) {
}




