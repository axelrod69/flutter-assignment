import 'package:flutter/material.dart';

class CalenderHooks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(left: 50, right: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 50,
            width: 20,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
                style: BorderStyle.solid,
                width: 5
              ),
              boxShadow: [
                BoxShadow(
                    color: const Color.fromRGBO(217, 247, 46, 1).withOpacity(0.4),
                    spreadRadius: 10,
                    blurRadius: 35,
                    offset: const Offset(2, 4)
                )
              ],
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(50)
              )
            ),
          ),
          Container(
            height: 50,
            width: 20,
            decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.white,
                    style: BorderStyle.solid,
                    width: 5
                ),
                boxShadow: [
                  BoxShadow(
                      color: const Color.fromRGBO(217, 247, 46, 1).withOpacity(0.4),
                      spreadRadius: 10,
                      blurRadius: 35,
                      offset: const Offset(2, 4)
                  )
                ],
                borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(50)
                )
            ),
          )
        ],
      ),
    );
  }
}