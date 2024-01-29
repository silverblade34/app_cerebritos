import 'package:app_cerebritos/app/controllers/coursedetails_controller.dart';
import 'package:get/get.dart';

class CourseDetailsBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<CourseDetailsController>(() => CourseDetailsController());
  }
}