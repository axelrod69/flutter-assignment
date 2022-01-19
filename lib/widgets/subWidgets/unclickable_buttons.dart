import 'package:flutter/material.dart';

class UnclickableButtons extends StatelessWidget {
  final String text;

  UnclickableButtons(this.text);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
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
        child: Text(text, style: const TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold
        )),
      ),
    );
  }
}