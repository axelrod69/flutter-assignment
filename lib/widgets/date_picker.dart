// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import './subWidgets/calender_container.dart';
import './subWidgets/text.dart';
import './subWidgets/hooks.dart';

class DatePicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 10, bottom: 20),
          child: Heading("Date"),
        ),
        Stack(
          clipBehavior: Clip.none,
          children: [
            CalenderContainer(),
            Positioned(
                top: -20,
                left: 0,
                right: 0,
                child: CalenderHooks()
            )
          ]
        ),
      ],
    );
  }
}