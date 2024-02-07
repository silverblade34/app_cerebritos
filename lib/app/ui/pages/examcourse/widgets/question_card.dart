import 'package:app_cerebritos/app/ui/pages/examcourse/widgets/radio_buttom.dart';
import 'package:app_cerebritos/app/utils/style_utils.dart';
import 'package:flutter/material.dart';

class QuestionCard extends StatelessWidget {
  final String title;
  final String description;
  final String img;
  final List<ResponseOption> options;

  const QuestionCard(
      {Key? key,
      required this.title,
      required this.description,
      required this.img,
      required this.options})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            fontFamily: 'Onest',
            color: SECONDARY,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(description),
        if (img.isNotEmpty)
          Image.network(
            img,
            width: 200,
            errorBuilder: (context, error, stackTrace) {
              return const Icon(Icons.error);
            },
          ),
        const SizedBox(
          height: 10,
        ),
        RadioButtom(
          options: [
            RadioOption(label: options[0].label, value: SingingCharacter.a),
            RadioOption(label: options[1].label, value: SingingCharacter.b),
            RadioOption(label: options[2].label, value: SingingCharacter.c),
            RadioOption(label: options[3].label, value: SingingCharacter.d),
            RadioOption(label: options[4].label, value: SingingCharacter.e),
          ],
        ),
      ],
    );
  }
}

class ResponseOption {
  final String label;
  final String value;
  ResponseOption({required this.label, required this.value});
}
