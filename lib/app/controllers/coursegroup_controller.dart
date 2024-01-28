import 'package:app_cerebritos/app/controllers/home_controller.dart';
import 'package:app_cerebritos/app/utils/style_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CourseGroupController extends GetxController {
  final RxInt codeGroupSelected = 0.obs;
  var selectedGroup = {}.obs;

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
}
