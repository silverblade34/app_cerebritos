import 'package:app_cerebritos/app/controllers/examcourse_controller.dart';
import 'package:app_cerebritos/app/ui/pages/examcourse/widgets/question_card.dart';
import 'package:app_cerebritos/app/ui/pages/examcourse/widgets/timer_bottom.dart';
import 'package:app_cerebritos/app/utils/style_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExamCoursePage extends GetView<ExamCourseController> {
  const ExamCoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Examén Lenguaje - 07/02/2024',
          style: TextStyle(color: Colors.white, fontSize: 17),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: PRIMARY,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    QuestionCard(
                      title: 'Pregunta 1',
                      description:
                          "En la lengua española, el acento no tiene posición fija en la palabra, es decir, puede situarse en diferentes sílabas y con ello distinguir significados. Según lo expresado anteriormente, marque la opción donde se cumple la función distintiva del acento en las palabras subrayadas. \n \nI) Gabriela, mi hermana, se fracturó el fémur.  \nII) Caminaron apresuradamente por las calles. \nIII) Con mucho entusiasmo, publico mi poema.\nIV) Raúl, tomó una bebida energizante natural.\n",
                      img: '',
                      options: [
                        ResponseOption(label: 'I y III', value: '1'),
                        ResponseOption(label: 'III y IV', value: '2'),
                        ResponseOption(label: 'I y IV', value: '3'),
                        ResponseOption(label: 'I y II', value: '4'),
                        ResponseOption(label: 'II y IV', value: '5'),
                      ],
                    ),
                    QuestionCard(
                      title: 'Pregunta 2',
                      description:
                          'Según la Ortografía de la lengua española, la función primordial de la mayúscula es diferenciar el nombre propio del nombre común. Considerando este aspecto normativo, señale los enunciados que presentan uso adecuado de estas letras.',
                      img: '',
                      options: [
                        ResponseOption(
                            label:
                                'La Canciller Cecilia Gervasi expulsó al Embajador de México.',
                            value: '6'),
                        ResponseOption(
                            label:
                                'Desde el Morro de Arica, vimos las playas del océano Pacífico. ',
                            value: '7'),
                        ResponseOption(
                            label:
                                'Bergoglio, el vicario de Cristo, es el pastor de la Iglesia católica. ',
                            value: '8'),
                        ResponseOption(
                            label:
                                'Isabel, el Sol siempre sale por el Este y se oculta por el Oeste. ',
                            value: '9'),
                        ResponseOption(
                            label:
                                ' Las Líneas de Nazca han sido investigadas por María Reiche.',
                            value: '10'),
                      ],
                    ),
                    QuestionCard(
                      title: 'Pregunta 3',
                      description:
                          'Un sustantivo colectivo es un nombre común que designa un conjunto de entes. A partir de la definición anterior, determine la serie de palabras que son sustantivos colectivos. ',
                      img: '',
                      options: [
                        ResponseOption(
                            label: 'muchedumbre, pléyade, caserío ',
                            value: '6'),
                        ResponseOption(
                            label: 'piara, constelación, botellas ',
                            value: '7'),
                        ResponseOption(
                            label: 'jauría, dosis, corifeo', value: '8'),
                        ResponseOption(
                            label: 'caravana, sillón, rebaño ', value: '9'),
                        ResponseOption(
                            label: 'legión, caries, flota ', value: '10'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          TimerBottom()
        ],
      ),
    );
  }
}
