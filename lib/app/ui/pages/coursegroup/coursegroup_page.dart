import 'package:app_cerebritos/app/controllers/coursegroup_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CourseGroupPage extends GetView<CourseGroupController> {
  const CourseGroupPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    final coursegroupCL = Get.put(CourseGroupController());
    return Scaffold(
      appBar: AppBar(
        title: Text(
          coursegroupCL.getGroupName(),
          style: const TextStyle(
            fontFamily: 'Onest',
            color: Color.fromARGB(255, 112, 112, 112),
            fontWeight: FontWeight.w800,
          ),
        ),
        centerTitle: true,
        backgroundColor: coursegroupCL.getGroupColor(),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        leading: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back_rounded,
                color: Color.fromARGB(255, 119, 119, 119),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
      ),
      backgroundColor: coursegroupCL.getGroupColor(),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 150,
              child: Image.asset(coursegroupCL.getGroupImage()),
            ),
            Expanded(
              child: Container(
                width: screenWidth,
                padding: const EdgeInsets.all(30),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadiusDirectional.only(
                    topStart: Radius.circular(35),
                    topEnd: Radius.circular(35),
                    bottomStart: Radius.circular(0),
                    bottomEnd: Radius.circular(0),
                  ),
                ),
                child: ListView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  children: [
                    const Text(
                      "Lista de cursos:",
                      style: TextStyle(
                        color: Color.fromARGB(255, 87, 87, 87),
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        fontFamily: 'Onest',
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ...coursegroupCL.generateCardCourses(screenWidth),
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
