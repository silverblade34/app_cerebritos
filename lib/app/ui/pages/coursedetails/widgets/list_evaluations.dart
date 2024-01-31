import 'package:app_cerebritos/app/utils/style_utils.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListEvaluations extends StatelessWidget {
  final List<Map<String, String>> evaluations;
  const ListEvaluations({super.key, required this.evaluations});

  String truncateDescription(String description) {
    const maxLength = 70;
    if (description.length > maxLength) {
      return '${description.substring(0, maxLength)}...';
    }
    return description;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: evaluations.length,
      itemBuilder: (context, index) {
        final currentEvaluations = evaluations[index];
        return Column(
          children: [
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: SECONDARY,
                child: Icon(
                  Icons.quiz_outlined,
                  color: Colors.white,
                ),
              ),
              title: Text(currentEvaluations['date'] ?? ''),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Puntaje obtenido: ${currentEvaluations['score']}",
                    style: const TextStyle(fontSize: 13),
                  ),
                  Text(
                    "Preguntas correctas: ${currentEvaluations['correctQuestions']}",
                    style: const TextStyle(fontSize: 13),
                  ),
                ],
              ),
              trailing: InkWell(
                onTap: () {
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('AlertDialog Title'),
                      content: const Text('AlertDialog description'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'Cancel'),
                          child: const Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'OK'),
                          child: const Text('OK'),
                        ),
                      ],
                    ),
                  );
                },
                child: const Icon(Icons.remove_red_eye_outlined),
              ),
            ),
            const Divider(),
          ],
        );
      },
    );
  }
}
