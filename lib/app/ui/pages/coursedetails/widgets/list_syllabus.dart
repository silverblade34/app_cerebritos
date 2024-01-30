import 'package:app_cerebritos/app/utils/style_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class ListEvaluations extends StatelessWidget {
  var syllabus = [];
  ListEvaluations({super.key, required this.syllabus});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        const SizedBox(
          height: 10,
        ),
        ListTile(
          leading: const CircleAvatar(
            backgroundColor: SECONDARY,
            child: Icon(
              Icons.quiz_outlined,
              color: Colors.white,
            ),
          ),
          title: Text("Name"),
          subtitle: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Description'),
            ],
          ),
          trailing: const Icon(Icons.remove_red_eye_outlined),
        ),
        const Divider(height: 0),
        const ListTile(
          leading: CircleAvatar(
            backgroundColor: SECONDARY,
            child: Icon(
              Icons.quiz_outlined,
              color: Colors.white,
            ),
          ),
          title: Text('2024-01-19 14:42:50'),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Puntaje maximo: 20'),
              Text('Puntaje obtenido; 14')
            ],
          ),
          trailing: Icon(Icons.remove_red_eye_outlined),
        ),
      ],
    );
  }
}
