import 'package:app_cerebritos/app/utils/style_utils.dart';
import 'package:flutter/material.dart';

class LatestEvaluations extends StatelessWidget {
  const LatestEvaluations({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 15,
          ),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Row(
            children: [
              Container(
                width: 100,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/iconcoursemath.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Habilidad matematica",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: GREY_HARD),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Fecha: 2024-01-15 15:10:20",
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                  Text(
                    "Correctas: 15",
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                  Text(
                    "Incorrectas: 15",
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 15,
          ),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Row(
            children: [
              Container(
                width: 100,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/iconcoursehuman.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Literatura",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: GREY_HARD),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                Text(
                    "Fecha: 2024-01-15 15:10:20",
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                  Text(
                    "Correctas: 15",
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                  Text(
                    "Incorrectas: 15",
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
