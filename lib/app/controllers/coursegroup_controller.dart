import 'package:app_cerebritos/app/controllers/home_controller.dart';
import 'package:app_cerebritos/app/ui/pages/coursegroup/widgets/card_course.dart';
import 'package:app_cerebritos/app/utils/style_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CourseGroupController extends GetxController {
  final RxInt codeGroupSelected = 0.obs;
  var selectedGroup = {}.obs;
  List<Color> pastelColors = const [
    Color(0xFFC7CEEA),
    Color(0xFFD4A5A5),
    Color(0xFFff6961),
    Color(0xFF77dd77),
    Color(0xFF84b6f4),
    Color(0xFFffda9e),
    Color(0xFFfdcae1),
    Color(0xFFffca99),
  ];

  @override
  void onInit() {
    final HomeController homeController = Get.find();
    int selectedCode = homeController.codeGroupSelected.value;

    // Busca el grupo con el código seleccionado
    selectedGroup.value = homeController.CourseGroups.firstWhere(
      (group) => group["code"] == selectedCode,
      orElse: () =>
          {"name": "", "amount_courses": 0, "image": "", "detail_courses": []},
    );

    super.onInit();
  }

  Color getGroupColor() {
    // Obtén el nombre del grupo seleccionado
    String groupName = getGroupName();
    switch (groupName) {
      case "Humanidades":
        return HUMANITIES;
      case "Ciencias":
        return SCIENCES;
      case "Habilidades":
        return SKILLS;
      case "Matematicas":
        return MATHS;
      default:
        return Colors.white;
    }
  }

  String getGroupName() {
    return selectedGroup["name"] ?? "";
  }

  String getGroupImage() {
    return selectedGroup["image"] ?? "";
  }

  List<Widget> generateCardCourses(double screenWidth) {
    List<Widget> cardCourses = [];

    if (selectedGroup["detail_courses"] != null) {
      List<dynamic> detailCourses = selectedGroup["detail_courses"];

      for (var course in detailCourses) {
        if (course["name"] != null) {
          cardCourses.add(
            SizedBox(
              height: 13,
            ),
          );
          cardCourses.add(
            CardCourse(
              course: course["name"],
              widthCard: screenWidth - 60,
              colorOptions: pastelColors,
            ),
          );
        }
      }
    }

    return cardCourses;
  }
}
