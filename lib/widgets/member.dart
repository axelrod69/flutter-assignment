// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'subWidgets/text.dart';
import 'subWidgets/unclickable_buttons.dart';

class Member extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 10),
          child: Heading('Available Member')
        ),
        SizedBox(height: 15),
        Container(
          margin: const EdgeInsets.only(left: 10),
          child: SizedBox(
            width: 198,
            child: UnclickableButtons('Members'),
          ),
        ),
        SizedBox(height: 15),
        Row(
          children: [
            Flexible(
              flex: 1,
              fit: FlexFit.loose,
              child: UnclickableButtons('2-3'),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.loose,
              child: UnclickableButtons('4-9'),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.loose,
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(1),
                      spreadRadius: 10,
                      blurRadius: 20,
                      offset: Offset(0, 0)
                    )
                  ]
                ),
                child: UnclickableButtons('2-3')
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.loose,
              child: Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.white.withOpacity(1),
                            spreadRadius: 10,
                            blurRadius: 20,
                            offset: Offset(0, 0)
                        )
                      ]
                  ),
                  child: UnclickableButtons('2-3')
              ),
            )
          ],
        )
      ],
    );
  }
}
