import 'package:course_app/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CategoryTitle extends StatelessWidget {
  final String leftText;
  final String rightText;
  CategoryTitle(this.leftText, this.rightText);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              leftText,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: kFont,
              ),
            ),
            Text(
              rightText,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: kFontLight,
              ),
            ),
          ],
        ));
  }
}
