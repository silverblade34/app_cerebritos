import 'package:app_cerebritos/app/utils/style_utils.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListSyllabus extends StatelessWidget {
  final List<Map<String, String>> syllabus;
  const ListSyllabus({super.key, required this.syllabus});

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
      itemCount: syllabus.length,
      itemBuilder: (context, index) {
        final currentSyllabus = syllabus[index];
        final isLastItem = index == syllabus.length - 1;
        return Column(
          children: [
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: SECONDARY,
                child: Icon(
                  Icons.checklist,
                  color: Colors.white,
                ),
              ),
              title: Text(currentSyllabus['name'] ?? ''),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    truncateDescription(currentSyllabus['description'] ?? ''),
                    style: const TextStyle(fontSize: 12),
                  ),
                ],
              ),
              trailing: InkWell(
                onTap: () {
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: Text(
                        currentSyllabus['name'] ?? '',
                        style: const TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 119, 119, 119),
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      content: Text(currentSyllabus['description'] ?? ''),
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
