import 'package:flutter/material.dart';

import '../assets/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              AppColors.color2,
              AppColors.color1,
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              (Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("LogIn");
                    },
                    child: const Text("Start"),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
