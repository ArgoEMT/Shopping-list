import 'package:flutter/material.dart';
import 'package:providence_shopping_list/core/class/list_course.dart';

class HomeScreenViewModel {
  List<ListCourse> listCourses;
  HomeScreenViewModel({
    required this.listCourses,
  });

  void init() {
    var courses = [
      ListCourse(
        titre: 'Course 1',
        auteur: 'Vic',
        date: DateTime.now(),
        items: [],
        color: Colors.pink,
      ),
      ListCourse(
        titre: 'Course 2',
        auteur: 'Joe',
        date: DateTime.now(),
        items: [],
        color: Colors.black,
      ),
      ListCourse(
        titre: 'Course 3',
        auteur: 'PY',
        date: DateTime.now(),
        items: [],
        color: Colors.blue,
      ),
      ListCourse(
        titre: 'Course 5',
        auteur: 'Raph',
        date: DateTime.now(),
        items: [],
        color: Colors.purple,
      ),
    ];

    listCourses.addAll(courses);
  }
}
