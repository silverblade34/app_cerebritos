import 'package:app_cerebritos/app/bindings/coursedetails_binding.dart';
import 'package:app_cerebritos/app/bindings/coursegroup_binding.dart';
import 'package:app_cerebritos/app/bindings/home_binding.dart';
import 'package:app_cerebritos/app/bindings/login_binding.dart';
import 'package:app_cerebritos/app/ui/pages/coursedetails/coursedetails_page.dart';
import 'package:app_cerebritos/app/ui/pages/coursegroup/coursegroup_page.dart';
import 'package:app_cerebritos/app/ui/pages/home/home_page.dart';
import 'package:app_cerebritos/app/ui/pages/login/login_page.dart';
import 'package:app_cerebritos/app/ui/pages/splash_page.dart';
import 'package:get/get.dart';
part './routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.SPLASH,
      page: () => const SplashPage(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => const HomePage(),
      binding: HomeBinding()
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => const LoginPage(),
      binding: LoginBinding()
    ),
     GetPage(
      name: Routes.COURSEGROUPDETAIL,
      page: () => const CourseGroupPage(),
      binding: CourseGroupBinding()
    ),
     GetPage(
      name: Routes.COURSEDETAILS,
      page: () => const CourseDetailsPage(),
      binding: CourseDetailsBinding()
    )
  ];
}