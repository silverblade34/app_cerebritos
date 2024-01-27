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
      page: () => HomePage(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginPage(),
    )
  ];
}