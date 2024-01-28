import 'dart:math';
import 'package:flutter/material.dart';

class CardCourse extends StatelessWidget {
  final String course;
  final double widthCard;
  final List<Color> colorOptions;
  const CardCourse(
      {Key? key,
      required this.course,
      required this.widthCard,
      required this.colorOptions})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Random random = Random();
    final Color randomColor = colorOptions[random.nextInt(colorOptions.length)];

    return Container(
      width: widthCard,
      height: 90,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 221, 221, 221).withOpacity(0.2),
            spreadRadius: 3,
            blurRadius: 3,
            offset: const Offset(0, 3),
          ),
        ],
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 5,
            height: 90,
            decoration: BoxDecoration(
              color: randomColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        course,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 87, 87, 87),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Onest',
                            fontSize: 15),
                      ),
                      const Text(
                        "Pruebas realizadas: 10",
                        style: TextStyle(
                          color: Color.fromARGB(255, 110, 110, 110),
                        ),
                      ),
                      const Text(
                        "Porcentaje de aciertos: 40%",
                        style: TextStyle(
                          color: Color.fromARGB(255, 110, 110, 110),
                        ),
                      )
                    ],
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Color.fromARGB(255, 129, 129, 129),
                    ),
                    onPressed: () {
                      print("---------Mas info");
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
