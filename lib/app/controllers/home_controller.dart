import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt codeGroupSelected = 0.obs;

  final CourseGroups = [
    {
      "code": 1,
      "name": "Humanidades",
      "amount_courses": 9,
      "image": "assets/images/humanidades_fondo.png",
      "detail_courses": [
        {"name": "Lenguaje"},
        {"name": "Literatura"},
        {"name": "Psicología"},
        {"name": "Geografía"},
        {"name": "Cívica"},
        {"name": "Historial del Perú"},
        {"name": "Historial Universal"},
        {"name": "Economía"},
        {"name": "Filosofía"}
      ]
    },
    {
      "code": 2,
      "name": "Ciencias",
      "amount_courses": 3,
      "image": "assets/images/ciencias_fondo.png",
      "detail_courses": [
        {"name": "Biología"},
        {"name": "Física"},
        {"name": "Química"}
      ]
    },
    {
      "code": 3,
      "name": "Matematicas",
      "amount_courses": 4,
      "image": "assets/images/matematicas_fondo.png",
      "detail_courses": [
        {"name": "Aritmética"},
        {"name": "Geometría"},
        {"name": "Álgebra"},
        {"name": "Trigonometría"}
      ]
    },
    {
      "code": 4,
      "name": "Habilidades",
      "amount_courses": 2,
      "image": "assets/images/habilidades_fondo.png",
      "detail_courses": [
        {"name": "Habilidad verbal"},
        {"name": "Habilidad lógico matemática"},
      ]
    }
  ];

  updateCodeCourseGroup(selected) {
    codeGroupSelected.value = selected;
    Get.toNamed('/coursegroupdetail');
  }
}
