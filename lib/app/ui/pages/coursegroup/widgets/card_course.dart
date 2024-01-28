import 'package:app_cerebritos/app/utils/style_utils.dart';
import 'package:flutter/material.dart';

class CardCourse extends StatelessWidget {
  final String course;
  const CardCourse({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
              color: PRIMARY,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Text(course),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
