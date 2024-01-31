import 'package:flutter/material.dart';

class CheckBoxListTile extends StatelessWidget {
  final List<Map<String, String>> syllabus;

  const CheckBoxListTile({Key? key, required this.syllabus}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Column(
          children: syllabus
              .map(
                (item) => CheckboxListTile(
                  title: Text(
                    item['name'] ?? '',
                    style: const TextStyle(fontSize: 13),
                  ),
                  value: true,
                  onChanged: (bool? value) {
                    // Puedes manejar cambios aquí si es necesario
                  },
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
