import 'package:flutter/material.dart';
import '../assets/show_info_item.dart';
import '../assets/app_colors.dart';
import 'items.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 50),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 7 / 8,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          children: Categories_data.map((categoryData) => CategoryItem(
                title: categoryData.title,
                imageUrl: categoryData.imageUrl,
                id: categoryData.id,
                para: categoryData.para,
                para2: categoryData.para2,
              )).toList(),
        ),
      ),
    );
  }
}
