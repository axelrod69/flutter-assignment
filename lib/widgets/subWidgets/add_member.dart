// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';

class AddMember extends StatefulWidget {
  final String text;

  AddMember(this.text);

  AddMemberState createState() => AddMemberState();
}

class AddMemberState extends State<AddMember> {
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Container(
        width: double.infinity,
        height: 55,
        padding: const EdgeInsets.only(left: 5, right: 8),
        decoration: BoxDecoration(
            border: Border.all(
                color: Colors.white,
                style: BorderStyle.solid,
                width: 3
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 8,
              child: Container(
                child: Text(widget.text.toString(), style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    shadows: [
                      Shadow(
                          color: Colors.red,
                          blurRadius: 25,
                          offset: Offset(1, 2)
                      )
                    ]
                )),
              )
            ),
            Flexible(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.red.withOpacity(0.8),
                        spreadRadius: 10,
                        blurRadius: 25,
                        offset: const Offset(1, 2)
                    )
                  ]
                ),
                child: const Icon(
                    Icons.perm_contact_calendar,
                    color: Colors.white
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}