import 'package:flutter/material.dart';

class GroupCard extends StatelessWidget {
  final Color color;
  final String image;
  final int code;
  final String group;
  final String amountcourses;
  final VoidCallback? onTapCallback; // Paso 1: Define el callback

  const GroupCard({
    super.key,
    required this.color,
    required this.image,
    required this.amountcourses,
    required this.group,
    required this.code,
    this.onTapCallback,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // Agrega este widget
      child: InkWell(
        onTap: () {
          onTapCallback!();
        },
        child: Container(
          decoration: BoxDecoration(
            color: color,
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
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: Image.asset(
                    image,
                    width: 60,
                    height: 60,
                    fit: BoxFit
                        .cover, // Ajusta la imagen para cubrir todo el espacio del contenedor
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      group,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color.fromARGB(255, 93, 93, 94),
                      ),
                    ),
                    Text(
                      amountcourses,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 152, 151, 155),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
