import 'package:app_cerebritos/app/controllers/coursegroup_controller.dart';
import 'package:app_cerebritos/app/ui/pages/coursegroup/widgets/card_course.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CourseGroupPage extends GetView<CourseGroupController> {
  const CourseGroupPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    final coursegroupCL = Get.put(CourseGroupController());
    List<Color> pastelColors = [
      Color(0xFFC7CEEA),
      Color(0xFFD4A5A5),
      Color(0xFFff6961),
      Color(0xFF77dd77),
      Color(0xFF84b6f4),
      Color(0xFFffda9e),
      Color(0xFFfdcae1),
      Color(0xFFffca99),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          coursegroupCL.getGroupName(),
          style: const TextStyle(
              fontFamily: 'Onest',
              color: Color.fromARGB(255, 112, 112, 112),
              fontWeight: FontWeight.w800),
        ),
        centerTitle: true,
        backgroundColor: coursegroupCL.getGroupColor(),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        leading: Container(
          padding: const EdgeInsets.all(10),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: IconButton(
                padding: const EdgeInsets.only(right: 2),
                icon: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Color.fromARGB(255, 119, 119, 119),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        ),
      ),
      backgroundColor: coursegroupCL.getGroupColor(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 150,
                child: Image.asset(coursegroupCL.getGroupImage()),
              ),
              Container(
                width: screenWidth,
                height: screenHeight - 230,
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Lista de cursos:",
                      style: TextStyle(
                        color: Color.fromARGB(255, 87, 87, 87),
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        fontFamily: 'Onest',
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    CardCourse(
                      course: "Lenguaje",
                      widthCard: screenWidth - 60,
                      colorOptions: pastelColors,
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    CardCourse(
                      course: "Literatura",
                      widthCard: screenWidth - 60,
                      colorOptions: pastelColors,
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    CardCourse(
                      course: "Psicologia",
                      widthCard: screenWidth - 60,
                      colorOptions: pastelColors,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
