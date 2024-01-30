import 'package:get/get.dart';

class CourseDetailsController extends GetxController {
  var selectedCourse = {}.obs;
  @override
  void onInit() {
    selectedCourse.value = {
      "code": 1,
      "course": "Lenguaje",
      "testCarriedOute": [
        {"date": "2024-01-20 14:42:50", "score": 30, "correctQuestions": 10},
        {"date": "2024-01-19 10:42:50", "score": 40, "correctQuestions": 15}
      ],
      "syllabus": [
        {"name": "La lengua estándar"},
        {"name": "Ortografía literal"}
      ]
    };
    super.onInit();
  }
}
