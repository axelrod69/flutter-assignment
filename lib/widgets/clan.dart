// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'subWidgets/text.dart';
import 'subWidgets/unclickable_buttons.dart';
import 'subWidgets/add_member.dart';

class Clan extends StatefulWidget {
  ClanState createState() => ClanState();
}

class ClanState extends State<Clan> {
  var clicked = false;

  @override
  Widget build(BuildContext context) {
    void skip() {
      setState(() {
        clicked = !clicked;
      });
    }

    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 10),
              child: Heading('Name Of Clan'),
            ),
            Container(
              width: 100,
              child: InkWell(
                onTap: skip,
                child: UnclickableButtons(!clicked ? "Skip" : "Add")
              )
            )
          ],
        ),
        SizedBox(height: 30),
        !clicked ? Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Container(
                width: double.infinity,
                height: 60,
                margin: const EdgeInsets.only(bottom: 5),
                padding: const EdgeInsets.only(left: 5, right: 5),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.white,
                        style: BorderStyle.solid,
                        width: 4
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.red.withOpacity(0.5),
                          spreadRadius: 10,
                          blurRadius: 25,
                          offset: const Offset(1, 2)
                      )
                    ],
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)
                    )
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    TextField(
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                                color: Color.fromRGBO(32, 36, 206, 1),
                                blurRadius: 50
                            )
                          ]
                      ),
                      autofocus: false,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            AddMember('Add Member'),
            SizedBox(height: 20),
            AddMember('Add Another Member'),
            SizedBox(height: 20),
            AddMember('Add Another Member')
          ],
        ) : SizedBox(height: 1)
      ],
    );
  }
}