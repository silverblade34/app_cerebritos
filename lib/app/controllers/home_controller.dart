import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt codeGroupSelected = 0.obs;
  final CourseGroups = [
    {
      "code": 1,
      "name": "Humanidades",
      "amount_courses": 5,
      "image": "assets/images/humanidades_fondo.png",
      "detail_courses": [
        {"name": "Lenguaje"},
        {"name": "Literatura"}
      ]
    },
    {
      "code": 2,
      "name": "Ciencias",
      "amount_courses": 3,
      "image": "assets/images/ciencias_fondo.png",
      "detail_courses": [
        {"name": "Biologia"},
        {"name": "Fisica"},
        {"name": "Quimica"}
      ]
    },
    {
      "code": 3,
      "name": "Matematicas", 
      "amount_courses": 5,
      "image": "assets/images/matematicas_fondo.png",
      "detail_courses": [
        {"name": "Lenguaje"},
        {"name": "Literatura"}
      ]
    },
    {
      "code": 4,
      "name": "Habilidades",
      "amount_courses": 3,
      "image": "assets/images/habilidades_fondo.png",
      "detail_courses": [
        {"name": "Biologia"},
        {"name": "Fisica"},
        {"name": "Quimica"}
      ]
    }
  ];

  updateCodeCourseGroup(selected) {
    print(selected);
    codeGroupSelected.value = selected;
    Get.toNamed('/coursegroupdetail');
  }
}
