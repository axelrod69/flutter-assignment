// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'subWidgets/button.dart';
import 'subWidgets/text.dart';
import 'subWidgets/unclickable_buttons.dart';
import 'package:provider/provider.dart';
import '../provider_class.dart';

class AvailableTime extends StatefulWidget {
  @override
  AvailableTimeState createState() => AvailableTimeState();
}

class AvailableTimeState extends State<AvailableTime> {
  var clicked = false;

  void setYourTime() {
    setState(() {
      clicked = true;
    });
    Provider.of<DataProvider>(context, listen: false).clickedBoolean(clicked);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 10),
          child: Heading("Available Time")
        ),
        SizedBox(height: 15),
        Container(
          padding: EdgeInsets.only(left: 5, right: 5),
          margin: EdgeInsets.only(left: 10),
          width: 109,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)
            ),
            border: Border.all(
              color: Colors.white,
              width: 3
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.red.withOpacity(0.6),
                spreadRadius: 10,
                blurRadius: 25,
                offset: Offset(1, 2)
              )
            ]
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Time', style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold
              )),
              Icon(Icons.access_time, color: Colors.white)
            ],
          ),
        ),
        SizedBox(height: 15),
        Row(
          children: [
            Flexible(
              flex: 1,
              fit: FlexFit.loose,
              child: Button("2:00 pm")
            ),
            Flexible(
                flex: 1,
                fit: FlexFit.loose,
                child: Button("4:00 pm")
            ),
            Flexible(
                flex: 1,
                fit: FlexFit.loose,
                child: Button("5:00 pm")
            )
          ],
        ),
        SizedBox(height: 15),
        Row(
          children: [
            Flexible(
              flex: 1,
              fit: FlexFit.loose,
              child: UnclickableButtons("Happy Hours"),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.loose,
              child: UnclickableButtons("Couple Exclusive"),
            )
          ],
        ),
        SizedBox(height: 15),
        InkWell(
          onTap: setYourTime,
          child: Container(
            width: 198,
              child: UnclickableButtons("Set Your Time")
          ),
        )
      ],
    );
  }
}
