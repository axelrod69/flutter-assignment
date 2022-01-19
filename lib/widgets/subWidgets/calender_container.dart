// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalenderContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Container(
        width: double.infinity,
        height: 400,
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
            style: BorderStyle.solid,
            width: 2
          ),
          boxShadow: [
            BoxShadow(
              color: const Color.fromRGBO(217, 247, 46, 1).withOpacity(0.4),
              spreadRadius: 10,
              blurRadius: 35,
              offset: const Offset(2, 4)
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 1, right: 5, left: 5),
          child: TableCalendar(
            firstDay: DateTime.utc(2022, 01, 01),
            lastDay: DateTime.utc(2022, 12, 31),
            focusedDay: DateTime.now(),
            startingDayOfWeek: StartingDayOfWeek.monday,
            headerStyle: HeaderStyle(
              titleTextStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                shadows: const [
                  Shadow(
                    color: Colors.lightGreenAccent,
                    blurRadius: 20,
                    offset: Offset(1, 2)
                  )
                ]
              )
            ),
            daysOfWeekStyle: DaysOfWeekStyle(
              weekdayStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    color: Colors.blue.withOpacity(0.8),
                    blurRadius: 10,
                    offset: Offset(1, 2)
                  )
                ],
              ),
              weekendStyle: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    color: Colors.red.withOpacity(0.8),
                    blurRadius: 10,
                    offset: Offset(1, 2)
                  )
                ]
              )
            ),

          ),
        ),
      ),
    );
  }
}