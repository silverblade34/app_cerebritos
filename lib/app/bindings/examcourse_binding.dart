import 'package:app_cerebritos/app/controllers/examcourse_controller.dart';
import 'package:get/get.dart';

class ExamCourseBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<ExamCourseController>(() => ExamCourseController());
  }
}