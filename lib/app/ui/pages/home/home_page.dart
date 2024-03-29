import 'package:app_cerebritos/app/controllers/home_controller.dart';
import 'package:app_cerebritos/app/ui/pages/home/widgets/group_card.dart';
import 'package:app_cerebritos/app/ui/pages/home/widgets/latest_evaluations.dart';
import 'package:app_cerebritos/app/ui/pages/home/widgets/search_course.dart';
import 'package:app_cerebritos/app/ui/pages/widgets/app_bar.dart';
import 'package:app_cerebritos/app/utils/style_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    final homeCL = Get.put(HomeController());

    return Scaffold(
      appBar: const AppBarWidget(),
      drawer: const NavigationDrawer(children: []),
      backgroundColor: const Color(0xFFF9F9F9),
      body: SafeArea(
        child: ListView(
          physics: const AlwaysScrollableScrollPhysics(),
          children: [
            const SearchCourse(),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              width: screenWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Últimas evaluaciones",
                        style: TextStyle(
                          fontSize: 20,
                          color: GREY_HARD,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Onest',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          print("Ver todas las evaluaciones");
                        },
                        child: const Text(
                          "Ver todas",
                          style: TextStyle(
                            fontSize: 13,
                            color: GREY_HARD,
                            fontFamily: 'Onest',
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const LatestEvaluations(),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Grupos",
                    style: TextStyle(
                      fontSize: 20,
                      color: GREY_HARD,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Onest',
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GroupCard(
                        color: HUMANITIES,
                        image: 'assets/images/home/humanidades.png',
                        amountcourses:
                            '${homeCL.CourseGroups[0]["amount_courses"]} Cursos',
                        group: 'Humanidades',
                        code: 1,
                        onTapCallback: () {
                          homeCL.updateCodeCourseGroup(1);
                        },
                      ),
                      const SizedBox(width: 16),
                      GroupCard(
                        color: SCIENCES,
                        image: 'assets/images/home/ciencias.png',
                        amountcourses:
                            '${homeCL.CourseGroups[1]["amount_courses"]} Cursos',
                        group: 'Ciencias',
                        code: 2,
                        onTapCallback: () {
                          homeCL.updateCodeCourseGroup(2);
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GroupCard(
                        color: MATHS,
                        image: 'assets/images/home/matematica.png',
                        amountcourses:
                            '${homeCL.CourseGroups[2]["amount_courses"]} Cursos',
                        group: 'Matematicas',
                        code: 3,
                        onTapCallback: () {
                          homeCL.updateCodeCourseGroup(3);
                        },
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      GroupCard(
                        color: SKILLS,
                        image: 'assets/images/home/habilidades.png',
                        amountcourses:
                            '${homeCL.CourseGroups[3]["amount_courses"]} Cursos',
                        group: 'Habilidades',
                        code: 4,
                        onTapCallback: () {
                          homeCL.updateCodeCourseGroup(4);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
