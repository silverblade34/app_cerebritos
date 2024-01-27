import 'package:app_cerebritos/app/controllers/coursegroup_controller.dart';
import 'package:app_cerebritos/app/utils/style_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CourseGroupPage extends GetView<CourseGroupController> {
  const CourseGroupPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Habilidades',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w800),
        ),
        centerTitle: true,
        backgroundColor: PRIMARY,
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
      backgroundColor: PRIMARY,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 150,
              ),
              Container(
                width: screenWidth,
                height: screenHeight - 230,
                padding: const EdgeInsets.all(30),
                decoration: const BoxDecoration(
                  color: Color(0xFFF9F9F9),
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
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Text("Razonamiento Matematico"),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Text("Razonamiento Verbal"),
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
