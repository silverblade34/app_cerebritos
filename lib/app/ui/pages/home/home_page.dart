import 'package:app_cerebritos/app/controllers/home_controller.dart';
import 'package:app_cerebritos/app/utils/style_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
          height: 200,
          width: screenWidth,
          decoration: const BoxDecoration(
            color: SECONDARY,
            borderRadius: BorderRadiusDirectional.only(
              topStart: Radius.circular(0),
              topEnd: Radius.circular(0),
              bottomStart: Radius.circular(25),
              bottomEnd: Radius.circular(25),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      'assets/images/icon_user.jpg',
                      width: 50,
                      height: 50,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "BUSCAR EL CURSO QUE QUIERES EVALUAR",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              const Text(
                "Estudiante 1",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  fontSize: 23,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
