import 'package:app_cerebritos/app/controllers/login_controller.dart';
import 'package:get/get.dart';

class LoginBinding implements Bindings {
@override
void dependencies() {
  Get.lazyPut<LoginController>(() => LoginController());
  }
}