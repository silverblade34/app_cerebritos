import 'package:app_cerebritos/app/controllers/coursedetails_controller.dart';
import 'package:app_cerebritos/app/ui/pages/coursedetails/widgets/checkbox_listile.dart';
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
        child: SingleChildScrollView(
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
                        controller.selectedListView.value = selectedValue;
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
                          child: ListSyllabus(syllabus: controller.syllabus),
                        );
                      } else if (selectedValue == "PRUEBAS") {
                        return SizedBox(
                          height: screenHeight - 160,
                          child: ListEvaluations(
                              evaluations: controller.testCarriedOut),
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
                      showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text(
                            'Personalice su examén',
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromARGB(255, 119, 119, 119),
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          content: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("1. Seleccione la dificultad:"),
                                const SizedBox(
                                  height: 10,
                                ),
                                Obx(
                                  () => Container(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          255, 236, 236, 236),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    height: 45,
                                    child: DropdownButton<String>(
                                      isExpanded: true,
                                      value: controller
                                          .examDifficultySelected.value,
                                      underline:
                                          Container(color: Colors.transparent),
                                      items: controller.itemsExamDifficulty,
                                      onChanged: (String? newValue) async {
                                        if (newValue != null) {
                                          controller.examDifficultySelected
                                              .value = newValue;
                                        }
                                      },
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                    "2. Seleccione cantidad de preguntas por temario:"),
                                const SizedBox(
                                  height: 10,
                                ),
                                Obx(
                                  () => Container(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          255, 236, 236, 236),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    height: 45,
                                    child: DropdownButton<String>(
                                      isExpanded: true,
                                      value: controller
                                          .numberOfQuestionsSelected.value,
                                      underline:
                                          Container(color: Colors.transparent),
                                      items: controller.itemsNumberOfQuestions,
                                      onChanged: (String? newValue) async {
                                        if (newValue != null) {
                                          controller.numberOfQuestionsSelected
                                              .value = newValue;
                                        }
                                      },
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                    "3. Seleccione los temas en los que deseas evaluarte:"),
                                const SizedBox(
                                  height: 10,
                                ),
                                CheckBoxListTile(syllabus: controller.syllabus)
                              ],
                            ),
                          ),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => {
                                Navigator.pop(context, 'CANCEL'),
                              },
                              child: const Text('Cancelar'),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context, 'OK');
                                Future.delayed(Duration.zero, () {
                                  Get.toNamed('/examcourse');
                                });
                              },
                              child: const Text('EMPEZAR'),
                            ),
                          ],
                        ),
                      );
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
      ),
    );
  }
}
