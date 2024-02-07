import 'package:flutter/material.dart';

enum SingingCharacter { a, b, c, d, e }

class RadioButtom extends StatefulWidget {
  final List<RadioOption> options;

  const RadioButtom({Key? key, required this.options}) : super(key: key);

  @override
  _RadioButtomState createState() => _RadioButtomState();
}

class _RadioButtomState extends State<RadioButtom> {
  SingingCharacter? _character;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: widget.options.map((option) {
        return ListTile(
          title: Text(
            option.label,
            style: TextStyle(fontSize: 14),
          ),
          leading: Radio<SingingCharacter>(
            value: option.value,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        );
      }).toList(),
    );
  }
}

class RadioOption {
  final String label;
  final SingingCharacter value;

  RadioOption({required this.label, required this.value});
}
