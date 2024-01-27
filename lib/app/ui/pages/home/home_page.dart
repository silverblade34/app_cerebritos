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
    return Scaffold(
      appBar: const AppBarWidget(),
      drawer: const NavigationDrawer(children: []),
      backgroundColor: const Color(0xFFF9F9F9),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SearchCourse(),
              SingleChildScrollView(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  width: screenWidth,
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ultimas evaluaciones",
                        style: TextStyle(
                          fontSize: 20,
                          color: GREY_HARD,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      LatestEvaluations(),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Grupos",
                        style: TextStyle(
                          fontSize: 20,
                          color: GREY_HARD,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GroupCard(
                            color: SKILLS,
                            image: 'assets/images/habilidades.png',
                            amountcourses: '6 Cursos',
                            group: 'Habilidades',
                          ),
                          SizedBox(width: 16),
                          GroupCard(
                            color: SCIENCES,
                            image: 'assets/images/ciencias.png',
                            amountcourses: '6 Cursos',
                            group: 'Ciencias',
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GroupCard(
                            color: MATHS,
                            image: 'assets/images/matematica.png',
                            amountcourses: '6 Cursos',
                            group: 'Matematicas',
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          GroupCard(
                            color: HUMANITIES,
                            image: 'assets/images/humanidades.png',
                            amountcourses: '6 Cursos',
                            group: 'Humanidades',
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
