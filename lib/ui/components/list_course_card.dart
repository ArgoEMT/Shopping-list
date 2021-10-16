import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:providence_shopping_list/core/class/list_course.dart';

class ListCourseCard extends StatelessWidget {
  const ListCourseCard({
    Key? key,
    required this.course,
  }) : super(key: key);

  final ListCourse course;

  String get _formatedDate {
    var dateFormated = DateFormat('dd/MM/yyyy').format(course.date);
    return dateFormated;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 12.0,
          right: 12,
          top: 12,
          bottom: 16,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  _formatedDate,
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(width: 8),
                const Text(
                  '|',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  course.auteur,
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const Divider(
              thickness: 1,
            ),
            Text(
              course.titre,
              style: TextStyle(
                fontSize: 18,
                color: course.color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
