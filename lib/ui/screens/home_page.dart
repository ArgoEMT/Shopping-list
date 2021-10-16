import 'package:flutter/material.dart';
import 'package:providence_shopping_list/core/class/view_model/home_screen_view_model.dart';
import 'package:providence_shopping_list/ui/components/list_course_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var model = HomeScreenViewModel(listCourses: []);
    model.init();

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Home page'),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: model.listCourses.length,
        itemBuilder: (context, index) {
          return ListCourseCard(
            course: model.listCourses[index],
          );
        },
      ),
    );
  }
}
