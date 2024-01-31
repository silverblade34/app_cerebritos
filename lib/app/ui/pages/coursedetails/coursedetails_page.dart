import 'package:app_cerebritos/app/controllers/coursedetails_controller.dart';
import 'package:app_cerebritos/app/ui/pages/coursedetails/widgets/list_evaluations.dart';
import 'package:app_cerebritos/app/ui/pages/coursedetails/widgets/list_syllabus.dart';
import 'package:app_cerebritos/app/ui/pages/coursedetails/widgets/single_choice.dart';
import 'package:app_cerebritos/app/utils/style_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CourseDetailsPage extends GetView<CourseDetailsController> {
  const CourseDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final coursedetailCL = Get.put(CourseDetailsController());
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Lenguaje',
          style: TextStyle(
            fontFamily: 'Onest',
            color: Color.fromARGB(255, 112, 112, 112),
            fontWeight: FontWeight.w800,
          ),
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Color.fromARGB(255, 112, 112, 112),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                  child: Center(
                    child: SingleChoice(onChanged: (selectedValue) {
                      coursedetailCL.selectedListView.value = selectedValue;
                    }),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Obx(
                  () {
                    String selectedValue = controller.selectedListView.value;

                    if (selectedValue == "TEMARIO") {
                      return SizedBox(
                        height: screenHeight - 160,
                        child: ListSyllabus(syllabus: coursedetailCL.syllabus),
                      );
                    } else if (selectedValue == "PRUEBAS") {
                      return SizedBox(
                        height: screenHeight - 160,
                        child: ListEvaluations(
                            evaluations: coursedetailCL.testCarriedOut),
                      );
                    } else {
                      return Container();
                    }
                  },
                ),
                
              ],
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.all(16),
                color: Colors.white,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateColor.resolveWith((states) => SECONDARY),
                  ),
                  onPressed: () {
                    // Acciones cuando se presiona el botón
                  },
                  child: const Text(
                    'Realizar Evaluación',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
