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
        final isLastItem = index == evaluations.length - 1;
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
                      title: Text(
                        currentEvaluations['date'] ?? '',
                        style: const TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 119, 119, 119),
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      content: SizedBox(
                        height: 110,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Puntaje maximo:"),
                                Text("20pts")
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("Puntaje obtenido:"),
                                Text("${currentEvaluations['score']}pts")
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("Preguntas correctas:"),
                                Text(currentEvaluations['correctQuestions'] ??
                                    '')
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("Preguntas incorrectas:"),
                                Text(currentEvaluations['wrongQuestions'] ?? '')
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("Tiempo realizado:"),
                                Text(currentEvaluations['timeGiven'] ?? '')
                              ],
                            ),
                          ],
                        ),
                      ),
                      actions: <Widget>[
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
            if (isLastItem)
              const SizedBox(
                height: 60,
              ),
          ],
        );
      },
    );
  }
}
