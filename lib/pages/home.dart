import 'package:flutter/material.dart';
import '../assets/colors/appColors';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            // transform: GradientTransform(),
            colors: [
              AppColors.color2,
              AppColors.color1,
            ],
          ),
        ),
        child: Center(
          child: (
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icon(
              //   Icons.home,
              // ),
              Text(
                "X-Robot",
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
