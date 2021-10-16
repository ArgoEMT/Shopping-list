import 'package:flutter/material.dart';

import 'item_course.dart';

class ListCourse {
  final List<ItemCourse> items;
  final String auteur;
  final DateTime date;
  final bool isBought;
  final String titre;
  final Color color;

  ListCourse({
    required this.items,
    required this.auteur,
    required this.date,
    required this.titre,
    this.color = Colors.blue,
    this.isBought = false,
  });
}
