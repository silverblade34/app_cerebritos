import 'package:app_cerebritos/app/utils/style_utils.dart';
import 'package:flutter/material.dart';

class TimerBottom extends StatelessWidget {
  const TimerBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(15.0),
        width: double.infinity,
        height: 70,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 199, 231, 217),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              height: 40,
              padding: const EdgeInsets.all(8.0),
              child: const Text('308 segundos restantes'),
            ),
            Container(
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: SECONDARY,
              ),
              child: const Text(
                'Terminar examén',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
