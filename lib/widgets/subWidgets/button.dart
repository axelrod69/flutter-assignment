// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'set_time.dart';
import 'package:provider/provider.dart';
import '../../provider_class.dart';

class Button extends StatelessWidget {
  final String text;

  Button(this.text);

  @override
  Widget build(BuildContext context) {

    void buttonPressed() {
      Provider.of<DataProvider>(context, listen: false).chooseTime(text);
      Provider.of<DataProvider>(context, listen: false).clickedBoolean(false);
    }
    // TODO: implement build
    return InkWell(
      onTap: buttonPressed,
      child: Container(
        padding: const EdgeInsets.only(left: 5, right: 5),
        margin: const EdgeInsets.only(left: 10, right: 10),
//      width: 100,
        height: 40,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
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
                  color: Colors.red.withOpacity(0.5),
                  spreadRadius: 10,
                  blurRadius: 25,
                  offset: const Offset(1, 2)
              )
            ]
        ),
        child: Center(
          child: Text(text, style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              )),
        ),
      ),
    );
  }
}