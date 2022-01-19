// ignore_for_file: use_key_in_widget_constructors, annotate_overrides, avoid_unnecessary_containers, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider_class.dart';

class SetTime extends StatefulWidget {
  final String text;

  SetTime(this.text);

  SetTimeState createState() => SetTimeState();
}

class SetTimeState extends State<SetTime> {
  @override
  Widget build(BuildContext context) {
    bool clicked = Provider.of<DataProvider>(context).clicked;
    // TODO: implement build
    return Center(
      child: Column(
        children: [
          SizedBox(
            width: 100,
            height: 5,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.deepOrange.withOpacity(1),
                    spreadRadius: 10,
                    blurRadius: 20,
                    offset: const Offset(1,1)
                  )
                ]
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: 250,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)
              ),
              border: Border.all(
                color: Color.fromRGBO(152, 247, 67, 1),
                style: BorderStyle.solid,
                width: 10
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.3),
                  spreadRadius: 10,
                  blurRadius: 20,
                  offset: const Offset(1, 1)
                )
              ]
            ),
            child: Center(
              child: clicked ? Padding(
                padding: const EdgeInsets.only(left: 10),
                child: SizedBox(
                  width: 250,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      TextField(
                        style: TextStyle(
                          fontSize: 80,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                                color: Color.fromRGBO(32, 36, 206, 1),
                                blurRadius: 50
                            )
                          ]
                        ),
                        autofocus: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ],
                  ),
                ),
              ) : Text(widget.text.split(' ').first.toString(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 80,
                color: Colors.white,
                shadows: const [
                  Shadow(
                    color: Color.fromRGBO(32, 36, 206, 1),
                    blurRadius: 50
                  )
                ]
              )),
            ),
          )
        ],
      ),
    );
  }
}