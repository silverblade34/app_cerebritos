import 'package:app_cerebritos/app/controllers/home_controller.dart';
import 'package:app_cerebritos/app/ui/pages/widgets/app_bar.dart';
import 'package:app_cerebritos/app/utils/style_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: const AppBarWidget(),
      drawer: const NavigationDrawer(children: []),
      backgroundColor: const Color(0xFFF9F9F9),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
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
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "BUSCAR EL CURSO QUE QUIERES EVALUAR",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Estudiante 1",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: 23,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      filled: true,
                      iconColor: Colors.white,
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(25.0),
                        ),
                      ),
                      labelText: 'Buscar curso',
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                width: screenWidth,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Ultimas evaluaciones",
                      style: TextStyle(
                        fontSize: 20,
                        color: GREY_HARD,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 15,
                      ),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 100,
                            height: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                image:
                                    AssetImage('assets/images/iconcoursemath.png'),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Habilidad matematica",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17,
                                    color: GREY_HARD),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Fecha: 2024-01-15 15:10:20"),
                              Text("Correctas: 15"),
                              Text("Incorrectas: 15")
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 15,
                      ),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 100,
                            height: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                image:
                                    AssetImage('assets/images/iconcoursehuman.png'),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Literatura",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17,
                                    color: GREY_HARD),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Fecha: 2024-01-15 15:10:20"),
                              Text("Correctas: 15"),
                              Text("Incorrectas: 15")
                            ],
                          )
                        ],
                      ),
                    ),
                       const SizedBox(
                      height: 15,
                    ),
                     const Text(
                      "Grupos",
                      style: TextStyle(
                        fontSize: 20,
                        color: GREY_HARD,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
