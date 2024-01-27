import 'package:app_cerebritos/app/controllers/coursegroup_controller.dart';
import 'package:get/get.dart';

class CourseGroupBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<CourseGroupController>(() => CourseGroupController());
  }
}