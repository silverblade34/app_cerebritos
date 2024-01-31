import 'package:get/get.dart';

class CourseDetailsController extends GetxController {
  var selectedCourse = {}.obs;
  late String course;
  late List<Map<String, String>> testCarriedOut;
  late List<Map<String, String>> syllabus;
  RxString selectedListView = RxString('PRUEBAS');
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
          "name": "Comunicación, Lenguaje y Lengua",
          "description":
              "1.1 Comunicación: Elementos de la comunicación. Lenguaje: Definición, propiedades y funciones. \n 1.2 Lengua y habla: Características e interrelación. Variedades: Regional, situacional, social y estándar. \n 1.3 Lengua española en el Perú: Antecedentes en el latín, características de su fonología, morfología y sintaxis. \n 1.4 Realidad lingüística del Perú: Familias lingüísticas y lenguas andinas y amazónicas."
        },
        {
          "name": "Fonología de la lengua española",
          "description":
              "2.1 Fonema: Definición y clases. Relación fonema-letra. \n 2.2 Sílaba: Definición, estructura y clases. \n 2.3 Secuencias de vocales: Diptongo, triptongo y hiato. \n 2.4 Segmentación silábica o silabeo ortográfico."
        },
        {
          "name": "Acentuación escrita",
          "description":
              "Acentuación especial: Diacrítica y enfática, y de formas o expresiones complejas "
        },
        {
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
