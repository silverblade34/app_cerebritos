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
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
            boxShadow: [
              BoxShadow(
                color:
                    const Color.fromARGB(255, 221, 221, 221).withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 3,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Row(
            children: [
              Container(
                width: 100,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/home/iconcoursemath.png'),
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
                        fontSize: 15,
                        color: GREY_HARD),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Fecha: 2024-01-15 15:10:20",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    "Correctas: 15",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    "Incorrectas: 15",
                    style: TextStyle(
                      fontSize: 12,
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
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
            boxShadow: [
              BoxShadow(
                color:
                    const Color.fromARGB(255, 221, 221, 221).withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 3,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Row(
            children: [
              Container(
                width: 100,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/home/iconcoursehuman.png'),
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
                        fontSize: 15,
                        color: GREY_HARD),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Fecha: 2024-01-15 15:10:20",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    "Correctas: 15",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    "Incorrectas: 15",
                    style: TextStyle(
                      fontSize: 12,
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
