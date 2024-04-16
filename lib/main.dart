import 'package:flutter/material.dart';
import 'package:flutter_projects/pages/car_control.dart';
import 'package:flutter_projects/pages/cartegory_info.dart';
import 'package:flutter_projects/pages/home.dart';
import 'package:flutter_projects/pages/home2.dart';
import 'package:flutter_projects/pages/login.dart';
import 'package:flutter_projects/pages/show_info.dart';
import 'package:flutter_projects/pages/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: CarControl(),
      routes: {
        // '/': (ctx) => const HomePage(),
        '/': (ctx) =>  const HomePage2(),
        CategoryCarsScreen.screenRoute: (ctx) => const CategoryCarsScreen(),
        "LogIn": (ctx) => const LogInPage(),
        "SignUp": (ctx) => const SignUpPage(),
        "CarControl": (ctx) => const CarControl(),
      },
    );
  }
}
