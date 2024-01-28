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

    return Scaffold(
      appBar: AppBar(
        title: Text(
          coursegroupCL.getGroupName(),
          style: const TextStyle(
              color: Color.fromARGB(255, 93, 93, 94),
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
                padding: const EdgeInsets.only(left: 10),
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.grey,
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
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CardCourse(course: "Lenguaje"),
                    CardCourse(course: "Literatura"),
                    CardCourse(course: "Psicologia"),
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
