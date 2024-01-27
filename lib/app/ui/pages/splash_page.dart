import 'package:app_cerebritos/app/utils/style_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PRIMARY,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipOval(
              child: Container(
                padding: const EdgeInsets.all(40),
                width: 550,
                decoration: const BoxDecoration(
                  color: Color(0xFFFBCA78),
                ),
                child: ClipOval(
                  child: Container(
                    padding: const EdgeInsets.all(40),
                    width: 350,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFCD593),
                    ),
                    child: ClipOval(
                      child: Container(
                        width: 250,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                        child: Image.asset(
                          'assets/images/logo_v2.png',
                          width: 250,
                          height: 250,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              padding: const EdgeInsets.all(40),
              child: Column(
                children: [
                  const Text(
                    "¡Asegura tu ingreso! \n En cualquier momento y en cualquier lugar",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  FilledButton(
                    onPressed: () {
                      Get.toNamed('/login');
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateColor.resolveWith((states) => SECONDARY),
                      padding: const MaterialStatePropertyAll(
                        EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 25,
                        ),
                      ),
                    ),
                    child: const Text(
                      'Empezar',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
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
