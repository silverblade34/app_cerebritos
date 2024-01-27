import 'package:app_cerebritos/app/utils/style_utils.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: SECONDARY,
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
      elevation: 0,
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: AssetImage('assets/images/icon_user.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Transform.translate(
              offset: const Offset(15, -15),
              child: Container(
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.white),
                  shape: BoxShape.circle,
                  color: PRIMARY,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
