// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  final String text;

  Heading(this.text);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(text,
        style: const TextStyle(
            fontStyle: FontStyle.italic,
            color: Color.fromRGBO(239, 238, 8, 1),
            fontSize: 30,
            fontWeight: FontWeight.bold
        ));
  }
}