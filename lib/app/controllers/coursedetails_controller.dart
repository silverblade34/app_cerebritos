import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CourseDetailsController extends GetxController {
  var selectedCourse = {}.obs;
  late String course;
  late RxString examDifficultySelected = RxString("0");
  late RxString numberOfQuestionsSelected = RxString("0");
  late List<Map<String, String>> testCarriedOut;
  late List<Map<String, String>> syllabus;
  RxString selectedListView = RxString('PRUEBAS');

  RxList<DropdownMenuItem<String>> itemsExamDifficulty =
      RxList<DropdownMenuItem<String>>(const [
    DropdownMenuItem(
      value: "0", // Id como valor del DropdownMenuItem
      child: Text(
        "SELECCIONAR",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 15),
      ),
    ),
    DropdownMenuItem(
      value: "1", // Id como valor del DropdownMenuItem
      child: Text(
        "FACIL",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 15),
      ),
    ),
    DropdownMenuItem(
      value: "2", // Id como valor del DropdownMenuItem
      child: Text(
        "INTERMEDIO",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 15),
      ),
    ),
    DropdownMenuItem(
      value: "3", // Id como valor del DropdownMenuItem
      child: Text(
        "DIFICIL",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 15),
      ),
    )
  ]);

  RxList<DropdownMenuItem<String>> itemsNumberOfQuestions =
      RxList<DropdownMenuItem<String>>(const [
    DropdownMenuItem(
      value: "0", // Id como valor del DropdownMenuItem
      child: Text(
        "SELECCIONAR",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 15),
      ),
    ),
    DropdownMenuItem(
      value: "2", // Id como valor del DropdownMenuItem
      child: Text(
        "2",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 15),
      ),
    ),
    DropdownMenuItem(
      value: "4", // Id como valor del DropdownMenuItem
      child: Text(
        "4",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 15),
      ),
    ),
    DropdownMenuItem(
      value: "6", // Id como valor del DropdownMenuItem
      child: Text(
        "6",
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 15),
      ),
    )
  ]);

  @override
  void onInit() {
    selectedCourse.value = {
      "code": 1,
      "course": "Lenguaje",
      "testCarriedOut": [
        {
          "date": "19 Enero 2024 17:03:58",
          "score": "30",
          "correctQuestions": "10",
          "wrongQuestions": "10",
          "timeGiven": "8min"
        },
        {
          "date": "19 November 2023 22:45:33",
          "score": "40",
          "correctQuestions": "15",
          "wrongQuestions": "10",
          "timeGiven": "8min"
        },
        {
          "date": "19 November 2023 22:45:33",
          "score": "35",
          "correctQuestions": "12",
          "wrongQuestions": "10",
          "timeGiven": "8min"
        },
        {
          "date": "19 November 2023 22:45:33",
          "score": "38",
          "correctQuestions": "14",
          "wrongQuestions": "10",
          "timeGiven": "8min"
        },
        {
          "date": "19 November 2023 22:45:33",
          "score": "42",
          "correctQuestions": "17",
          "wrongQuestions": "10",
          "timeGiven": "8min"
        },
        {
          "date": "19 November 2023 22:45:33",
          "score": "40",
          "correctQuestions": "15",
          "wrongQuestions": "10",
          "timeGiven": "8min"
        },
        {
          "date": "19 November 2023 22:45:33",
          "score": "35",
          "correctQuestions": "12",
          "wrongQuestions": "10",
          "timeGiven": "8min"
        },
        {
          "date": "19 November 2023 22:45:33",
          "score": "38",
          "correctQuestions": "14",
          "wrongQuestions": "10",
          "timeGiven": "8min"
        },
        {
          "date": "19 November 2023 22:45:33",
          "score": "42",
          "correctQuestions": "17",
          "wrongQuestions": "10",
          "timeGiven": "8min"
        },
      ],
      "syllabus": [
        {
          "id": "1",
          "name": "Comunicación, Lenguaje y Lengua",
          "description":
              "1.1 Comunicación: Elementos de la comunicación. Lenguaje: Definición, propiedades y funciones. \n 1.2 Lengua y habla: Características e interrelación. Variedades: Regional, situacional, social y estándar. \n 1.3 Lengua española en el Perú: Antecedentes en el latín, características de su fonología, morfología y sintaxis. \n 1.4 Realidad lingüística del Perú: Familias lingüísticas y lenguas andinas y amazónicas."
        },
        {
          "id": "2",
          "name": "Fonología de la lengua española",
          "description":
              "2.1 Fonema: Definición y clases. Relación fonema-letra. \n 2.2 Sílaba: Definición, estructura y clases. \n 2.3 Secuencias de vocales: Diptongo, triptongo y hiato. \n 2.4 Segmentación silábica o silabeo ortográfico."
        },
        {
          "id": "3",
          "name": "Acentuación escrita",
          "description":
              "Acentuación especial: Diacrítica y enfática, y de formas o expresiones complejas "
        },
        {
          "id": "4",
          "name": "Morfosintaxis de la lengua española",
          "description":
              "Formación de palabra: Flexión y derivación, y composición, parasíntesis y acronimia "
        }
      ]
    };

    // Guardar partes específicas de selectedCourse en variables independientes
    course = selectedCourse["course"];
    testCarriedOut =
        List<Map<String, String>>.from(selectedCourse["testCarriedOut"]);
    syllabus = List<Map<String, String>>.from(selectedCourse["syllabus"]);

    super.onInit();
  }
}
