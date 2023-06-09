import 'package:course_app/screens/home/widget/category_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../../constants/colors.dart';

class ActiveCourse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        CategoryTitle('Currently Active', 'view all'),
        Container(
          margin: EdgeInsets.all(25),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: kFontLight.withOpacity(0.1),
            border: Border.all(color: kFontLight.withOpacity(0.3), width: 1),
            borderRadius: BorderRadius.circular(8),
          ),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      'assets/images/progress.png',
                      width: 60,
                    )),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Symmetry Theory',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: kFont,
                      ),
                    ),
                    Text(
                      '2 Lessons Left',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: kFontLight,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            CircularPercentIndicator(
              radius: 30.0,
              lineWidth: 5.0,
              percent: 0.61,
              center: Text(
                '61%',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              progressColor: kAccent,
            ),
          ]),
        ),
      ],
    ));
  }
}
