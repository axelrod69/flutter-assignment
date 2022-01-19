// ignore_for_file: avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import './widgets/logo.dart';
import './widgets/time.dart';
import 'widgets/subWidgets/text.dart';
import 'widgets/subWidgets/set_time.dart';
import 'package:provider/provider.dart';
import './provider_class.dart';
import './widgets/member.dart';
import './widgets/clan.dart';
import 'widgets/subWidgets/unclickable_buttons.dart';
import './widgets/date_picker.dart';

// ignore: use_key_in_widget_constructors
class MainScreen extends StatefulWidget {
  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    var data = Provider.of<DataProvider>(context).timeSelected;
    // TODO: implement build
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Color.fromRGBO(118, 48, 48, 1),
            Color.fromRGBO(95, 85, 85, 1),
            Color.fromRGBO(251, 185, 78, 1),
            Color.fromRGBO(249, 122, 122, 1),
            Color.fromRGBO(91, 91, 91, 1)
          ],
              stops: [0.2, 0.4, 0.6, 0.8, 1]
          )),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Logo(),
                  SizedBox(height: 10),
                  DatePicker(),
                  AvailableTime(),
                  SizedBox(height: 30),
                  SetTime(data.toString()),
                  SizedBox(height: 60),
                  Member(),
                  SizedBox(height: 60),
                  Clan(),
                  SizedBox(height: 20),
                  Center(
                    child: Container(
                      width: 200,
                      margin: EdgeInsets.only(bottom: 60),
                      child: UnclickableButtons('Overview')
                    ),
                  )
                ],
              ),
            ],
          )),
    );
  }
}
