import 'package:app_cerebritos/app/utils/style_utils.dart';
import 'package:flutter/material.dart';

class SearchCourse extends StatelessWidget {
  const SearchCourse({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
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
    );
  }
}
