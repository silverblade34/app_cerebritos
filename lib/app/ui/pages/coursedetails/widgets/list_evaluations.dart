import 'package:app_cerebritos/app/utils/style_utils.dart';
import 'package:flutter/material.dart';

class ListEvaluations extends StatelessWidget {
  const ListEvaluations({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const <Widget>[
        SizedBox(
          height: 10,
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: SECONDARY,
            child: Icon(
              Icons.quiz_outlined,
              color: Colors.white,
            ),
          ),
          title: Text('2024-01-20 14:42:50'),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Puntaje maximo: 20'),
              Text('Puntaje obtenido; 14')
            ],
          ),
          trailing: Icon(Icons.remove_red_eye_outlined),
        ),
        Divider(height: 0),
        ListTile(
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
