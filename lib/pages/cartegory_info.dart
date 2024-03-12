import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../assets/app_colors.dart';

class CategoryCarsScreen extends StatelessWidget {
  static const screenRoute = '/category_cars';
  const CategoryCarsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgument =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryId = routeArgument['id'];
    final categoryTitle = routeArgument['title'];
    final categoryImageUrl = routeArgument['imageUrl'];
    final categorypara = routeArgument['para'];
    final categorypara2 = routeArgument['para2'];

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
        backgroundColor: AppColors.mainColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              categoryImageUrl!,
              width: 450,
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                child: Text(
                  categorypara!,
                  style:const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                )),
            const SizedBox(
              height: 30,
            ),
            const Text("Informations",
                style: TextStyle(fontSize: 25, color: Colors.black)),
            const SizedBox(
              height: 20,
            ),
            Container(
                margin: const EdgeInsets.only(left: 10, right: 10),
                child: Text(
                  categorypara2!,
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: AppColors.paraColor),
                ))
          ],
        ),
      ),
    );
  }
}
