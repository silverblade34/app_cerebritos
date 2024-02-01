import 'package:app_cerebritos/app/controllers/examcourse_controller.dart';
import 'package:app_cerebritos/app/ui/pages/examcourse/widgets/radio_buttom.dart';
import 'package:app_cerebritos/app/utils/style_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum SingingCharacter { lafayette, jefferson }

class ExamCoursePage extends GetView<ExamCourseController> {
  const ExamCoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Examén Lenguaje',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: PRIMARY,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Pregunta 1",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Onest',
                    color: SECONDARY,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                    "En la lengua española, el acento no tiene posición fija en la palabra, es decir, puede situarse en diferentes sílabas y con ello distinguir significados. Según lo expresado anteriormente, marque la opción donde se cumple la función distintiva del acento en las palabras subrayadas. \n \n" +
                        "I) Gabriela, mi hermana, se fracturó el fémur.  \n" +
                        "II) Caminaron apresuradamente por las calles. \n" +
                        "III) Con mucho entusiasmo, publico mi poema.\n" +
                        "IV) Raúl, tomó una bebida energizante natural.\n"),
                RadioButtom(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
