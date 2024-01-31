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
          "date": "2024-01-20 14:42:50",
          "score": "30",
          "correctQuestions": "10"
        },
        {
          "date": "2024-01-19 10:42:50",
          "score": "40",
          "correctQuestions": "15"
        },
        {
          "date": "2024-01-18 09:30:00",
          "score": "35",
          "correctQuestions": "12"
        },
        {
          "date": "2024-01-17 15:20:45",
          "score": "38",
          "correctQuestions": "14"
        },
        {
          "date": "2024-01-16 12:10:30",
          "score": "42",
          "correctQuestions": "17"
        },
        {
          "date": "2024-01-19 10:42:50",
          "score": "40",
          "correctQuestions": "15"
        },
        {
          "date": "2024-01-18 09:30:00",
          "score": "35",
          "correctQuestions": "12"
        },
        {
          "date": "2024-01-17 15:20:45",
          "score": "38",
          "correctQuestions": "14"
        },
        {
          "date": "2024-01-16 12:10:30",
          "score": "42",
          "correctQuestions": "17"
        },
      ],
      "syllabus": [
        {
          "name": "Comunicación, Lenguaje y Lengua",
          "description":
              "1.1 Comunicación: Elementos de la comunicación. Lenguaje: Definición, propiedades y funciones 1.2 Lengua y habla: Características e interrelación. Variedades: Regional, situacional, social y estándar 1.3 Lengua española en el Perú: Antecedentes en el latín, características de su fonología, morfología y sintaxis 1.4 Realidad lingüística del Perú: Familias lingüísticas y lenguas andinas y amazónicas"
        },
        {
          "name": "Fonología de la lengua española",
          "description": "Fonema: Definición y clases. Relación fonema-letra"
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
