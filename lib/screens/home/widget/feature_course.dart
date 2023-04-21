import 'package:flutter/material.dart';
import 'package:course_app/models/course.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../models/course.dart';
import 'category_title.dart';
import 'course_item.dart';

class FeatureCourse extends StatelessWidget {
  final coursesList = Course.generateCourses();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CategoryTitle('Top of the Week', 'View All'),
          Container(
            height: 300,
            child: ListView.separated(
              padding: EdgeInsets.all(25),
              scrollDirection: Axis.horizontal,
              itemCount: coursesList.length,
              itemBuilder: (context, index) => CourseItem(coursesList[index]),
              separatorBuilder: (BuildContext context, int index) =>
                  SizedBox(width: 15),
            ),
          ),
        ],
      ),
    );
  }
}
