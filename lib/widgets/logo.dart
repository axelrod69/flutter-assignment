import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.black54,
              Colors.black,
            ],
          ),
          // ignore: prefer_const_constructors
          borderRadius: BorderRadius.only(
              bottomRight: const Radius.circular(500)),
          border: Border.all(
              color: const Color.fromRGBO(244, 86, 153, 1),
              style: BorderStyle.solid,
              width: 5
          )
      ),
      child: Container(
        margin: const EdgeInsets.only(right: 15, bottom: 15),
        child: const Center(
          child: Text(
              "LOGO",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              )
          ),
        ),
      ),
    );
  }
}