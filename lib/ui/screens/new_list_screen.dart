import 'package:flutter/material.dart';

class NewListScreen extends StatelessWidget {
  const NewListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(),
          ],
        ),
      ),
    );
  }
}
